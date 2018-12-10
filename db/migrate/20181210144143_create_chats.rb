class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.references :sender_id
      t.references :recipient_id

      t.timestamps
    end
  end
end
