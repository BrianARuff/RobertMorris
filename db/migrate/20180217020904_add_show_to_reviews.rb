class AddShowToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :show, :string
  end
end
