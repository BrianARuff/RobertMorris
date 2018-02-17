class Review < ApplicationRecord
  belongs_to :user
  validates :name, :message, :rating,  presence: true
  validates :message, uniqueness: true
  validates_numericality_of :rating, less_than_or_equal_to: 5
  validates_numericality_of :rating, greater_than_or_equal_to: 1
end
