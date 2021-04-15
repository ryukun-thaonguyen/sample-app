class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: t(:activation_email_tit)
  end
    
  def password_reset(user)
    @user = user
    @user.reset_token = User.new_token
    UserMailer.password_reset(user)
  end

end
