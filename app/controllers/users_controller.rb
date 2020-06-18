class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
    redirect_to login_path
  end

  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      give_token
    else 
      redirect_to home_url
    end
  end


private

def find_user
  @user = User.find(params[:id])
end

def user_params
  params.require(:user).permit!
end

  
end
