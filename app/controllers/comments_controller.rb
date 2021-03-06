class CommentsController < ApplicationController
  before_filter :find_post
  before_filter :find_comment, :only => [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @comment = @post.comments.build
  end

  def create
    @comment = @post.comments.build(params[:comment])
    if @comment.save
      flash[:notice] = "Comment has been created."
      redirect_to [@post, @comment]
    else
      flash[:alert] = "Comment has not been created."
      render :action => "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @comment.update_attributes(params[:comment])
      flash[:notice] = "Comment has been updated."
      redirect_to [@post, @comment]
    else
      flash[:alert] = "Comment has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment has been deleted."
    redirect_to posts_path
  end

  private

    def find_post
      @post = Post.find(params[:post_id])
    end

    def find_comment
      @comment = @post.comments.find(params[:id])
    end
end


