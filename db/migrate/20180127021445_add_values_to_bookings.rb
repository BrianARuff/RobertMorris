class AddValuesToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :company, :string
    add_column :bookings, :role, :string
    add_column :bookings, :address, :string
    add_column :bookings, :group, :string
    add_column :bookings, :budget, :string
    add_column :bookings, :purpose, :text
    add_column :bookings, :attendees, :string
    add_column :bookings, :additional_info, :text
  end
end
