class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.references :coach, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.time :time_slot

      t.timestamps
    end
  end
end
