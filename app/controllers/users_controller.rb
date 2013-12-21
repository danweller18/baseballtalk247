class UsersController < ApplicationController
  before_filter :authenticate_admin!

  def home
  end

  def show
    @user = current_user
  end
end
