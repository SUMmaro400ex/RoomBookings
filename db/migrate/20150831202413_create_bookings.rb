class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :room, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
