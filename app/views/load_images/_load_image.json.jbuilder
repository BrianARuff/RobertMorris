json.extract! load_image, :id, :name, :description, :picture, :created_at, :updated_at
json.url load_image_url(load_image, format: :json)
