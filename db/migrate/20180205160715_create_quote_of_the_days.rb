class CreateQuoteOfTheDays < ActiveRecord::Migration[5.1]
  def change
    create_table :quote_of_the_days do |t|
      t.string :quote
      t.text :narration
      t.string :author
      t.text :message
      t.string :posted_by

      t.timestamps
    end
  end
end
