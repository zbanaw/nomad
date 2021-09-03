class AvailableTime < ApplicationRecord
  belongs_to :coach

  validates :day_to_week, presence: true
  validates :start, presence: true
  validates :end, presence: true
end
