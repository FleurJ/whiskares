class ReviewsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @user = User.find(params[:user_id])
    @review.user = @user
    if @user != current_user
      @review = Review.new(review_params)
      @review.save
      redirect_to user_path(@user)
    else
      redirect_to user_path(@user)
    end
  end

  def destroy
    if @user == current_user
      @review = Review.find(params[:id])
      @review.destroy
      redirect_to user_path(@user)
    else
      redirect_to user_path(@user)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
