class Match < ApplicationRecord
  has_many :events
  has_many :team_matches
  has_one :match_winner
  has_many :teams, through: :team_matches
  validates :start_time, :end_time, :venue, presence: true
  accepts_nested_attributes_for :team_matches


  def winner_update
    winner = self.team_matches.order("score DESC").first.team_id
    MatchWinner.create(match_id: self.id, team_id: winner)
  end
end
