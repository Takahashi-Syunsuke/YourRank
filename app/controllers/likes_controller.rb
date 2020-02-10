class LikesController < ApplicationController
  before_action :move_to_new_user_session_path

  def create
    @like = current_user.likes.create(rank_id: params[:rank_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find_by(rank_id: params[:rank_id], user_id: current_user.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end


  def move_to_new_user_session_path
    redirect_to new_user_session_path unless user_signed_in?
  end
  
end
