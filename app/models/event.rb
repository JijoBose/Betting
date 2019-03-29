class Event < ApplicationRecord
  has_many :bets
  has_one :event_winner
  belongs_to :match
  validates :match_id, :title, :start_time, :end_time, :commission, presence: true

  # def payout_transaction(status)
  #   total_amt = self.bets.where(vote: status).sum(:amount)
  #   winners = self.bets.where(vote: !status).each do |win|
  #     percentage = (bets.first.amount / total) * 100
  #   end
  #   binding.pry
  # end
end
