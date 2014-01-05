class BatsController < ApplicationController

  def index
  end

  def adult
    @bats = Bats.paginate(page: params[:page])
  end

  def show_adult_bats
    @bat = Bats.find_by_model_number(params[:id])
    @review = current_user.reviews.build if user_signed_in?
  end

  def bat_brands
    @bat = Bats.find_by_manufacturer(params[:id]) 
  end

end
