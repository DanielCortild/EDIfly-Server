@admin = Admin.new(:email => "sales@edifly.com",
                   :password => "password",
                   :password_confirmation => "password")
@admin.save

@admin2 = Admin.new(:email => "daniel.cortild@gmail.com",
                    :password => "password",
                    :password_confirmation => "password")
@admin2.save

@message = Home.new(:message => "This is a test message")
@message.save
