class AddBookImagesToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :book_one, :string
    add_column :books, :book_two, :string
    add_column :books, :book_three, :string
    add_column :books, :book_four, :string
    add_column :books, :book_five, :string
  end
end
