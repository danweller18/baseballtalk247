class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @review = current_user.reviews.build(review_params)
    if @review.save
      flash[:success] = "Review created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  def new_review
    @review = current_user.reviews.build if user_signed_in?
  end

  private

    def review_params
      params.require(:review).permit(:pros, :cons)
    end
end
