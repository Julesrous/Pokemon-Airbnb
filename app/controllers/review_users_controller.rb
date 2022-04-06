class ReviewUsersController < ApplicationController
  def create
    @review = ReviewUser.new(review_params)
    @user1 = current_user
    @user2 = User.find(params[:user_id])
    authorize @review
    if @review.save
      @participation1 = UserReviewParticipation.new
      @participation2 = UserReviewParticipation.new
      @participation1.review_user = @review
      @participation1.user = @user1
      @participation2.review_user = @review
      @participation2.user = @user2
      @participation1.save
      @participation2.save
      redirect_to user_path(@user2)
    else
      flash[:alert] = "You did not choose a content and/or a rating."
      redirect_to user_path(@user2)
    end
  end

  private

  def review_params
    params.require(:review_user).permit(:content, :rating)
  end
end
