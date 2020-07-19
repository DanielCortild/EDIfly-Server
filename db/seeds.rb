@admin = Admin.new(:email => "test@test.com",
                   :password => "password",
                   :password_confirmation => "password")
@admin.save

@message = Home.new(:message => "This is a test message")
@message.save
