class TagsController < ApplicationController
  before_action :move_to_new_user_session_path, only: [:new, :create]

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new 
    @tags = Tag.all
  end

  def create
    @tag = Tag.create(post_params)
    redirect_to new_tag_path
  end

  private
  def post_params
    params.require(:tag).permit(:name)
  end

  def move_to_new_user_session_path
    redirect_to new_user_session_path unless user_signed_in?
  end
  
end
