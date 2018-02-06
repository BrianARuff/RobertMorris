class Book < ApplicationRecord
  belongs_to :user
  mount_uploader :book_one, BookImageUploader
  mount_uploader :book_two, BookImageUploader
  mount_uploader :book_three, BookImageUploader
  mount_uploader :book_four, BookImageUploader
  mount_uploader :book_five, BookImageUploader
end
