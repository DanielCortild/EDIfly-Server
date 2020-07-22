@admin = Admin.new(:email => "edifly.receiver@gmail.com",
                   :password => "password",
                   :password_confirmation => "password")
@admin.save

@admin2 = Admin.new(:email => "test@test.com",
                    :password => "password",
                    :password_confirmation => "password")
@admin2.save

@message = Home.new(:message => "This is a test message")
@message.save
