class AppMailer < ActionMailer::Base
  def send_welcome_email(user)
    @user = user
    mail to: user.email, from: "info@dailytasks.com", subject: "Daily Tasks Completed"
  end
end