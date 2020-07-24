class UserResponseMailer < ApplicationMailer
  def new_downloaded_file_email
    @downloaded_file = params[:downloaded_file]
    mail(to: receiverAddress, subject: "[#{Time.now.to_i}] New download of \"#{@downloaded_file.file}\"")
  end
  def new_message_email
    @message = params[:message]
    mail(to: receiverAddress, subject: "[#{Time.now.to_i}] New message about #{@message.concerning}")
  end

  private

    def receiverAddress
      'edifly.receiver@gmail.com'
    end

end
