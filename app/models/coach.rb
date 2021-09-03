class Coach < ApplicationRecord
  has_many :appointments
  has_many :available_times

  validates :name, presence: true
  validates :time_zone, presence: true
end
