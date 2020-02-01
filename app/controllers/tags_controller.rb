class TagsController < ApplicationController

  def new
    @tag = Tag.new 
  end

  def create
    Tag.create(post_params)
    redirect_to root_path
  end

  private
  def post_params
    params.require(:tag).permit(:name)
  end
end
