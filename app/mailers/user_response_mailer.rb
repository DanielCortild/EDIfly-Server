class UserResponseMailer < ApplicationMailer
  def new_downloaded_file_email
    @downloaded_file = params[:downloaded_file]
    mail(to: receiver_email, subject: "[#{Time.now.to_i}] New download of \"#{@downloaded_file.file}\"").deliver_now
  end
  def new_message_email
    @message = params[:message]
    mail(to: receiver_email, subject: "[#{Time.now.to_i}] New message about #{@message.concerning}")
  end

  private

  def receiver_email
    Rails.application.credentials.production[:receiver_gmail_username]
  end

end
