class MessagesController < ApplicationController
  before_action do
    @chat = Chat.find(params[:chat_id])
  end
  def index
   @messages = @chat.messages
    if @messages.length > 10
     @over_ten = true
     @messages = @messages[-10..-1]
    end
    if params[:m]
     @over_ten = false
     @messages = @chat.messages
    end
   if @messages.last
    if @messages.last.user_id != current_user.id
     @messages.last.read = true;
    end
   end
  @message = @chat.messages.new
   end
  def new
   @message = @chat.messages.new
  end
  def create
   @message = @chat.messages.new(message_params)
   if @message.save
    redirect_to chat_messages_path(@chat)
   end
  end
  private
   def message_params
    params.require(:message).permit(:body, :user_id)
   end
end
