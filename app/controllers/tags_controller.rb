class TagsController < ApplicationController

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
end
