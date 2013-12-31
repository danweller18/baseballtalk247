class BatsController < ApplicationController

  def index
  end

  def adult
    @bats = Bats.paginate(page: params[:page])
  end

  def show_adult_bats
    @bat = Bats.find_by_model_number(params[:id])
  end

  def bat_brands
    @bat = Bats.find_by_manufacturer(params[:id]) 
  end

end
