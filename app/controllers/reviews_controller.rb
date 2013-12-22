class ReviewsController < ApplicationController

  def home
  end

  def adult_bats
    @reviews = Reviews.all
  end
end
