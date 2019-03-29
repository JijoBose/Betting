class Event < ApplicationRecord
  validates :match_id, :title, :start_time, :end_time, :commission, presence: true
end
