class AddStuffToSpeakings < ActiveRecord::Migration[5.1]
  def change
    add_column :speakings, :speaking_date, :string
  end
end
