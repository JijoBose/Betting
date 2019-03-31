class TeamMatch < ApplicationRecord
  belongs_to :team
  belongs_to :match
  validates :team_id, :match_id, presence: true
  validates :team_id, uniqueness: { scope: :match_id,
      message: "team already added for this match" }
  validate :teams_in_match, on: :update

  private

  def teams_in_match
    if TeamMatch.where(match_id: self.match_id).count > 2
      errors.add(:base, 'Cannot add more than 2 teams in a match') and return false
    else
      return true
    end
  end
end
