require 'bcrypt'

class UsersController < ApplicationController
  before_action :find_user, only: [:show]
  
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    cookies[@user.id]
    
  end

  def create
    @user = User.new(params[:username])
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.save
    if @user.save
      redirect_to login_path
      flash.notice = "Thanks for signing up! Login below!"
    else
      redirect_to new_user_path
    end
  end
    

  def login
    @user = User.find_by_email(params[:email])
   
    if @user.password == params[:password]
      give_token
      cookies[:username]
      
    else
      redirect_to sessions_path
    end
  end


private

def find_user
  @user = User.find(params[:id])
end

def user_params
  params.require(:user).permit(:username, :email, :password)
end
 

  
end
