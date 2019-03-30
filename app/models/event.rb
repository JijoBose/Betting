class Event < ApplicationRecord
  has_many :bets
  has_one :event_winner
  belongs_to :match
  validates :match_id, :title, :start_time, :end_time, :commission, presence: true

  def payout_transaction(status, user_id)
    total_amt = self.bets.where(vote: status).sum(:amount)
    total_commission = total_amt * self.commission
    total = total_amt - total_commission
    self.bets.where(vote: status).each do |bt|
      per = (bt.amount / total) * 100
      awarded = (total_amt * per) / 100
      Payout.create(user_id: bt.user_id, event_id: self.id, amount: awarded, txn: Payout::STATUSES[:won])
      Payout.create(user_id: user_id, event_id: self.id, amount: total_commission, txn: Payout::STATUSES[:commission])
    end
  end
end
