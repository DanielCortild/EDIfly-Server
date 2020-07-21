# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview
  def new_message_email
    # Set up a temporary order for the preview
    message = Message.new(name: "Joe Smith", company: "joe@gmail.com", email: "1-2-3 Chuo, Tokyo, 333-0000", message: "I want to place an order!")

    MessageMailer.with(message: message).new_message_email
  end
end
