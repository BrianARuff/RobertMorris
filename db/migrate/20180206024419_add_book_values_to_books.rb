class AddBookValuesToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :book_two_name, :string
    add_column :books, :book_two_image, :string
    add_column :books, :book_two_description, :text
    add_column :books, :book_three_name, :string
    add_column :books, :book_three_image, :string
    add_column :books, :book_three_description, :text
    add_column :books, :book_four_name, :string
    add_column :books, :book_four_image, :string
    add_column :books, :book_four_description, :text
    add_column :books, :book_five_name, :string
    add_column :books, :book_five_image, :string
    add_column :books, :book_five_description, :text
  end
end
