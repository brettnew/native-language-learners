class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to :back
    else
      flash[:alert] = "Please fill in the username and content inputs."
      redirect_to :back
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:username, :content)
  end
end
