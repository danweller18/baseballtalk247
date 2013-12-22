class ReviewsController < ApplicationController

  def home
  end

  def adult_bats
    @reviews = Reviews.paginate(page: params[:page])
  end
end
