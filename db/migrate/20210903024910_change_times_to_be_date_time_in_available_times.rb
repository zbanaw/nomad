class ChangeTimesToBeDateTimeInAvailableTimes < ActiveRecord::Migration[6.1]
  def change
    change_column :available_times, :start, :datetime
    change_column :available_times, :end, :datetime
  end
end
