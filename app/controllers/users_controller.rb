class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @review_user = ReviewUser.new
  end
end
