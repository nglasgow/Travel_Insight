class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:notice] = "Post has been created."
      redirect_to @post
    else
      flash[:alert] = "Post has not been created."
      render :action => "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end
end
