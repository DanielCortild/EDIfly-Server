class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @messages = Message.all.order(created_at: :desc)
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      MessageMailer.with(message: @message).new_message_email.deliver_later
    end
    
  end

  private

    def message_params
      params.require(:message).permit(:name, :company, :email, :message)
    end

end
