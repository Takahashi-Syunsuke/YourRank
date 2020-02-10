class CommentsController < ApplicationController
  before_action :move_to_new_user_session_path

  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.create(comment_params)
    redirect_to rank_path(comment.rank)
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, rank_id: params[:rank_id])
  end

  def move_to_new_user_session_path
    redirect_to new_user_session_path unless user_signed_in?
  end
  
end
