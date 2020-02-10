class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @ranks = @user.ranks.order(id: "DESC")
  end
end
