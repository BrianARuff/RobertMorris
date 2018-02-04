class AddImageToLoadImages < ActiveRecord::Migration[5.1]
  def change
    add_column :load_images, :image, :string
  end
end
