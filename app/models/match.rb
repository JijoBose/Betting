class Match < ApplicationRecord
  has_many :events
  has_many :team_matches
  has_many :teams, through: :team_matches
  validates :start_time, :end_time, :venue, presence: true
end
