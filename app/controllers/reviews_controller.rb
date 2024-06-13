class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params(:restaurant_id))
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant
  end

  def destroy

  end
end
