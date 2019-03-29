class Event < ApplicationRecord
  has_many :bets
  belongs_to :match
  validates :match_id, :title, :start_time, :end_time, :commission, presence: true
end
