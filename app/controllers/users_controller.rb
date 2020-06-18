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
  end

  def create
    @user = User.new(params[:username])
    @user.email = params[:email]
    @user.password = params[:password]
    @user.save!
    redirect_to user_path
  end

  def login
    @user = User.find_by_email(params[:email])
    byebug
    @password = params[:password]
    if @password == @user.password
      # give_token
    else 
      redirect_to signup_path
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
