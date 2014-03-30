class UsersController < ApplicationController
  def index
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:notice] = "Your account was create successfully"
  		redirect_to root_path
  	else
  		flash[:notcie] = "There was a problem creating your account"
  		redirect_to :back
  	end

   	
  end

  def show
  	@user = User.find(params[:id])
  end

  def edit
  end
end
