class PostsController < ApplicationController
  def index
  end

  def new
  	@post = Post.new
  	@topic = Topic.new
  	
  end

  def create
  	@post = Post.new(params[:post])
  	@topic = Topic.new(params[:topic])
  	
  end

  def show
  end

  def edit
  end
end
