class MessageMailer < ApplicationMailer
  def new_message_email
    @message = params[:message]

    mail(to: 'edifly.receiver@gmail.com', subject: "You got a new message!")
  end
end
