class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :booking_date
      t.references :user, foreign_key: true
      t.references :space, foreign_key: true
      t.boolean :confirmed
    end
  end
end
