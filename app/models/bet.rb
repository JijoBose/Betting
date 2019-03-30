class Bet < ApplicationRecord
  validates :event_id, :user_id, :amount, presence: true
  validates :user_id, uniqueness: { scope: :event_id,
      message: "You can only bet once for an event" }
  belongs_to :event
  belongs_to :user
end
