class StaticPagesController < ApplicationController
  def home
    @review = current_user.reviews.build if user_signed_in?
  end

  def contact
  end

  def about
  end
end
