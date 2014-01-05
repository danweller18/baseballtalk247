class BatsController < ApplicationController

  def index
  end

  def adult
    @bats = Bats.paginate(page: params[:page])
  end

  def show_adult_bats
    @bat = Bats.find_by_model_number(params[:id])
    @reviews = @bat.reviews.paginate(page: params[:page])
    @review = current_user.reviews.build if user_signed_in?
  end

  def bat_brands
  end
end
