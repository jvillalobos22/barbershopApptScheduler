class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appt_start
      t.references :barber, index: true, foreign_key: true
      t.string :client_name
      t.string :client_phone

      t.timestamps null: false
    end
  end
end
