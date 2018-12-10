class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.references :chat_id, foreign_key: true
      t.references :message_id, foreign_key: true
      t.text :body
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
