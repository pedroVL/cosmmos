class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat

  def message_time
   created_at.strftime("%H:%M %d-%m-%Y")
end
