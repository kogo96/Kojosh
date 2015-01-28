class PostsController < ApplicationController
  def index
    
  end

  def show    
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    
    @post = Post.new(params['post'].permit(:user, :text))
    @post.save

    redirect_to @post

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
