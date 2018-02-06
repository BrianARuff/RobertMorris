json.extract! book, :id, :book_name, :book_image, :book_description, :user_id, :created_at, :updated_at
json.url book_url(book, format: :json)
