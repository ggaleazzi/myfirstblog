class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def welcome_email_preview(email)
      mail(to: email, subject: 'Sample Email')
  end
end
