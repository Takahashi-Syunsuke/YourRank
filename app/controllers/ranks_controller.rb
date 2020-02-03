class RanksController < ApplicationController
  def index
    @ranks = Rank.all.order(id: "DESC")
  end

  def show
    @rank = Rank.find(params[:id])
    @comment = Comment.new
    @comments = @rank.comments.includes(:user).order(id: "DESC")
  end

  def new
    @rank = Rank.new
  end

  def create
    Rank.create(post_params)
    redirect_to root_path
  end

  private
  def post_params
    params.require(:rank).permit(:title, :rank_1, :rank_2, :rank_3, :image_1, :image_2, :image_3, :content_1, :content_2, :content_3).merge(user_id: current_user.id)
  end

end
