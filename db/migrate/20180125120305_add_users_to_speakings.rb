class AddUsersToSpeakings < ActiveRecord::Migration[5.1]
  def change
    add_column :speakings, :user_id, :integer
  end
end
