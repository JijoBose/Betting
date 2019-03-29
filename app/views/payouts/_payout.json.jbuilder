json.extract! payout, :id, :user_id, :match_id, :amount, :type, :created_at, :updated_at
json.url payout_url(payout, format: :json)
