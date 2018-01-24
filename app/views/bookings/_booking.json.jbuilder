json.extract! booking, :id, :name, :number, :email, :message, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
