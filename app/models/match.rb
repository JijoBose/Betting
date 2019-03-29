class Match < ApplicationRecord
  validates :start_time, :end_time, :venue, presence: true
end
