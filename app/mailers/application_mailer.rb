class ApplicationMailer < ActionMailer::Base
  default from:     'noreply@edifly.com',
          reply_to: 'sales@edifly.com'
  layout 'mailer'
end
