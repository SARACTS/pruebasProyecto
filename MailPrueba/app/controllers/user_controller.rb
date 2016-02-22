class UserController < ApplicationController
  
  def index
    
  end
  
  def create
    @user = User.new
    @user.user = params[:user]
    @user.email = params[:email]
    @user.save 
    UserMailer.welcome_email(@user).deliver
    puts "Usuario #{@user.user} creado"
    
    render :index
  end
  
end
