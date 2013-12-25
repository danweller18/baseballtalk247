class ReviewsController < ApplicationController

  def home
  end

  def adult_bats
    @reviews = Reviews.paginate(page: params[:page])
  end

  def show_adult_bats
    @review = Reviews.find_by_model_number(params[:id])
  end
end
