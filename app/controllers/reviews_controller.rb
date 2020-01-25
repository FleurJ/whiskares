class ReviewsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    if @user != current_user
      @user = User.find(params[:user_id])
      @review = Review.new(review_params)
      @review.user = @user
      @review.save
      redirect_to user_path(@user)
    else
      redirect_to user_path(@user)
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
