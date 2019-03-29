json.extract! team_match, :id, :team_id, :match_id, :score, :created_at, :updated_at
json.url team_match_url(team_match, format: :json)
