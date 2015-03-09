class PostsController < ApplicationController  

  def index    
    @posts = Post.all    
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
    flash[:success] = "Post was created"

    redirect_to @post

  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post_params = params['post'].permit(:user, :text)
    @post = Post.find(params[:id])
    @post.update(post_params)
    flash[:success] = "Post was updated"
    
    redirect_to edit_post_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to(:back)
    flash[:error] = "Post was destroyed!"

  end
end
