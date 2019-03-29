class Team < ApplicationRecord
  has_many :team_matches
  has_one :match_winner
  has_one :event_winner
  has_many :matches, through: :team_matches
  validates :name, presence: true
end
