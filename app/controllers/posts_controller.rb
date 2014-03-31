class PostsController < ApplicationController
  def index
  	@user =User.find(params[:user_id])
  	@posts = Post.where(user_id: params[:user_id])
  end

  def new
  	@topic = Topic.new(params[:topic])
  	

  end

  def create
  	@topic = Topic.new(params[:topic])
  	if @topic.save
  		flash[:notice] = "Your post was created successfully"
  		redirect_to root_path
  	else
  		flash[:notice]= "There was a problem creating that post"
  		redirect_to user_path
  	end
  	
  end

  def show
  	@post = Post.find(params[:id])
  end

  def edit
  end
end
