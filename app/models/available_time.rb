class AvailableTime < ApplicationRecord
  belongs_to :coach

  validates :day_to_week, presence: true
  validates :start, presence: true
  validates :end, presence: true

  def time_slot_array
    options = []
    (self.start.to_i...self.end.to_i).step(30.minutes).each do |time|
      options.push Time.at(time).in_time_zone(ActiveSupport::TimeZone[coach.timezone]).strftime("%l:%M %p")
    end
    options
  end
end
