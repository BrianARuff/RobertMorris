class Booking < ApplicationRecord
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	validates :email, :name, :number, :message, presence: true
end
