class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.integer :telegram_chat_id, null: false

      t.timestamps
    end
    add_index :conversations, :telegram_chat_id, unique: true
  end
end
