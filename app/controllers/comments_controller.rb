class CommentsController < ApplicationController
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
end
