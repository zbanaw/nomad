class Appointment < ApplicationRecord
  belongs_to :coach

  validates :time_slot, presence: true
  validates :day_of_week, presence: true
  validates :user_name, presence: true
end
