class RanksController < ApplicationController
  before_action :move_to_new_user_session_path, only: [ :new, :create, :edit, :update, :destroy]

  def index
    @ranks = Rank.all.order(id: "DESC")
  end

  def show
    @rank = Rank.find(params[:id])
    @comment = Comment.new
    @comments = @rank.comments.includes(:user).order(id: "DESC")
    @like = Like.new
    @likes_count = Like.where(rank_id: @rank).count
  end

  def new
    @rank = Rank.new
  end

  def create
    @rank = Rank.new(post_params)
    if @rank.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def edit
    @rank = Rank.find(params[:id])
  end

  def update
    @rank = Rank.find(params[:id])
    if @rank.update(post_params)
      redirect_to rank_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    rank =  Rank.find(params[:id])
    rank.destroy
    redirect_to root_path
  end

  def search
    @ranks = Rank.search(params[:keyword]).order(id: "DESC")
    respond_to do |format|
      format.html
      format.json
    end
  end

  private
  def post_params
    params.require(:rank).permit(:title, :rank_1, :rank_2, :rank_3, :image_1, :image_2, :image_3, :content_1, :content_2, :content_3, tag_ids: []).merge(user_id: current_user.id)
  end

  def move_to_new_user_session_path
    redirect_to new_user_session_path unless user_signed_in?
  end

end
