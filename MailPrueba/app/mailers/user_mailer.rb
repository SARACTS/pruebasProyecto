class UserMailer < ActionMailer::Base
  default from: "pruebasmailror@gmail.com"
  
  #definimos un método de mensaje de bienvenida
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
  
end
