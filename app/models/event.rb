class Event < ApplicationRecord
  has_many :bets
  has_one :event_winner
  belongs_to :match
  validates :match_id, :title, :start_time, :end_time, :commission, presence: true
end
