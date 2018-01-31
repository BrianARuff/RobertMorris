class Booking < ApplicationRecord
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	validates :name, :number, :email, :time, :booking_date, :company, :address, :group, :budget, :purpose, :attendees, presence: true
end
