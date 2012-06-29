class UserMailer < ActionMailer::Base
  default from: "no-reply@mail.com"

  def password_reset(user, password)
     @user = user
     @password = password
     mail(:to => user.email, :subject => 'Notificacion de reestablecimiento de contrasena')
  end
end
