class ReviewsController < ApplicationController
  def inde
    @review = Review.where(restaurant_id)
  end


  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review.params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurants)
  end

  def update
  @review = Review.find(params[:id])
  @review.update(params[:review])
  end

  private

  def set restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
