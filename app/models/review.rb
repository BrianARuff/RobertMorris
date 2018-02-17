class Review < ApplicationRecord
  belongs_to :user
  validates :name, :message, :rating,  presence: true
  validates :message, uniqueness: true
end
