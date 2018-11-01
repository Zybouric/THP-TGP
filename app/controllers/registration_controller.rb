class RegistrationController < ApplicationController

  def new
  	@user = User.new
  end
  def index
    @user = User.new
  end

  def create
    @user = User.new(params[:email])
    @user.password = params[:password]
    @user.save!
  end

  def login
    @user = User.find_by_email(params[:email])
    #if @user.password == params[:password]
    #give_token
   #else
   #redirect_to home_url
   #end
  end

  def show 
    @user = User.all
  end 
end
