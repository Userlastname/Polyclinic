class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.bigint :user_id, null: false
      t.bigint :doctor_id, null: false
      t.text :recommendation
      t.timestamps
    end
    add_foreign_key :appointments, :users
    add_foreign_key :appointments, :doctors
  end
end
