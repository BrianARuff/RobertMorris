class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :number
      t.string :email
      t.text :message
      t.integer :user_id

      t.timestamps
    end
  end
end
