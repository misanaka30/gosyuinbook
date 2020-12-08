class CommentsController < ApplicationController
  before_action :set_gosyuin_id 

  def index
    @comment = Comment.new
    @comments = @gosyuin.comments.includes(:user)
  end
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to gosyuin_comments_path(@gosyuin, @comment)
    else
      @gosyuin = @comment.gosyuin
      @comments = @gosyuin.comments
      render "gosyuin/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, gosyuin_id: params[:gosyuin_id])
  end

  def set_gosyuin_id
    @gosyuin = Gosyuin.find(params[:gosyuin_id])
  end
end
