class AddVideoToLoadImages < ActiveRecord::Migration[5.1]
  def change
    add_column :load_images, :video, :string
  end
end
