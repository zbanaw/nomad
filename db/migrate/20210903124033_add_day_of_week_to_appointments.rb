class AddDayOfWeekToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :day_of_week, :integer
  end
end
