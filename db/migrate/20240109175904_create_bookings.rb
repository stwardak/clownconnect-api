class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :clown_id
      t.integer :user_id
      t.date :date
      t.time :time
      t.text :preferences

      t.timestamps
    end
  end
end
