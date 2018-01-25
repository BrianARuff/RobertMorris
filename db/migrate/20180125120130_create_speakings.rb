class CreateSpeakings < ActiveRecord::Migration[5.1]
  def change
    create_table :speakings do |t|
      t.string :name
      t.text :description
      t.date :date
      t.string :time

      t.timestamps
    end
  end
end
