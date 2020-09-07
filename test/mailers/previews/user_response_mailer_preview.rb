# Preview all emails at http://localhost:3000/rails/mailers/user_response_mailer
class UserResponseMailerPreview < ActionMailer::Preview
  def new_downloaded_file_email
    downloaded_file = DownloadedFile.new(name: "Joe Smith", company: "EDIfly", email: "example@email.com", file: "faq")
    UserResponseMailer.with(downloaded_file: downloaded_file).new_downloaded_file_email
  end
  def new_downloaded_file_email_client
    downloaded_file = DownloadedFile.new(name: "Joe Smith", company: "EDIfly", email: "example@email.com", file: "faq")
    UserResponseMailer.with(downloaded_file: downloaded_file).new_downloaded_file_email_client
  end
  def new_message_email
    message = Message.new(name: "Joe Smith", company: "EDIfly", email: "joe.smith@email.com", concerning: "Something Interesting", message: "I want to place an order!")
    UserResponseMailer.with(message: message).new_message_email
  end
  def new_message_email_client
    message = Message.new(name: "Joe Smith", company: "EDIfly", email: "joe.smith@email.com", concerning: "Something Interesting", message: "I want to place an order!")
    UserResponseMailer.with(message: message).new_message_email_client
  end
end
