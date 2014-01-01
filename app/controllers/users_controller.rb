class UsersController < ApplicationController
before_filter :authenticate_admin!, :except => [:show]

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find_by_username(params[:id])
    @reviews = @user.reviews.paginate(page: params[:page])
  end
end
