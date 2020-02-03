class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @ranks = @user.ranks
  end
end
