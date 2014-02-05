class BatsController < ApplicationController

  def index
  end

  def adult
    @bats = Bat.paginate(page: params[:page])
  end

  def show_adult_bats
    @bat = Bat.find_by_model_number(params[:id])
    @reviews = @bat.reviews.paginate(page: params[:page])
    @review = current_user.reviews.build if user_signed_in?
    @rating = Rating.where(review_id: @review.id, user_id: @current_user.id).first
    unless @rating
      @rating = Rating.create(review_id: @review.id, user_id: @current_user.id, score: 0)
    end
  end

  def bat_brands
  end
end
