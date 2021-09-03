class Coach < ApplicationRecord
  has_many :appointments
  has_many :available_times
end
