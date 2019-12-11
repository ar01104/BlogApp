class ApplicationMailer < ActionMailer::Base
  default to: 'info@BlogApp.com', from: 'info@BlogApp.com'
  layout 'mailer'
end
