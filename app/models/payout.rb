class Payout < ApplicationRecord
  STATUSES = {
    commission: 'Commission',
    won: 'Won'
  }.freeze
  belongs_to :user
  belongs_to :event
end
