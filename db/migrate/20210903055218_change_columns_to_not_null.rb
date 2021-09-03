class ChangeColumnsToNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:appointments, :time_slot, false)
    change_column_null(:appointments, :user_name, false)
    change_column_null(:available_times, :day_of_week, false)
    change_column_null(:available_times, :start, false)
    change_column_null(:available_times, :end, false)
    change_column_null(:coaches, :name, false)
    change_column_null(:coaches, :timezone, false)
  end
end
