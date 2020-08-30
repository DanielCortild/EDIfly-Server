class UserResponseMailer < ApplicationMailer
  def new_downloaded_file_email
    @downloaded_file = params[:downloaded_file]
    mail(to: receiver_email, subject: "[#{Time.now.to_i}] New download of \"#{@downloaded_file.file}\"")
  end
  def new_downloaded_file_email_client
    @downloaded_file = params[:downloaded_file]
    mail(to: @downloaded_file.email, subject: "Thank you for your interest")
  end
  def new_message_email
    @message = params[:message]
    mail(to: receiver_email, subject: "[#{Time.now.to_i}] New message about #{@message.concerning}")
  end
  def new_message_email_client
    @message = params[:message]
    mail(to: @message.email, subject: "Thank you for your message")
  end

  private

  def receiver_email
    Rails.application.credentials.production[:receiver_gmail_username]
  end

end
