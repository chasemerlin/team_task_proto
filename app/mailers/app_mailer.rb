class AppMailer < ActionMailer::Base
  def send_welcome_email(user)
    @user = user
    mail to: user.email, from: "info@dailytasks.com", subject: "Daily Tasks Completed"
  end

  def try_send(user)
    @users = User.all
    @user = user
    mail to: user.email, from: "trytasks.com", subject: "ITS WORKING"
  end
end