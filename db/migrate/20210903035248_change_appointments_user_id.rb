class ChangeAppointmentsUserId < ActiveRecord::Migration[6.1]
  def change
    remove_reference :appointments, :user, foreign_key: true
    add_column :appointments, :user_name, :string
  end
end
