class UserMailer < ActionMailer::Base
  default from: "notifications@sflforms.com"

  def error_email(user)
  	@user = user
  	@url = '??'
    mail(to: rvermooten@gmail.com, subject: 'Error message')
  end
end
