class CreateAvailableTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :available_times do |t|
      t.references :coach, null: false, foreign_key: true
      t.integer :day_of_week
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
