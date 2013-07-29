class PostsController < ApplicationController
  def index

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:project])
    if @post.save
      flash[:notice] = "Post has been created"
      redirect_to @post
    else
      # nothing, yet
    end
  end

  def show
    @post = Post.find(params[:id])
  end
end
