class UserResponseMailer < ApplicationMailer
  def new_downloaded_file_email
    @downloaded_file = params[:downloaded_file]
    mail(to: 'edifly.receiver@gmail.com', subject: "You got a new download!")
  end
  def new_message_email
    @message = params[:message]
    mail(to: 'edifly.receiver@gmail.com', subject: "You got a new message!")
  end
end
