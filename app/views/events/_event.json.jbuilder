json.extract! event, :id, :match_id, :title, :start_time, :end_time, :commission, :status, :created_at, :updated_at
json.url event_url(event, format: :json)
