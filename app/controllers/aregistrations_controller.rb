class AregistrationsController < Devise::RegistrationsController
  def new
    flash[:error] = 'Sorry! Something went wrong!'
    redirect_to root_path
  end

  def create
    flash[:error] = 'Sorry! Something went wrong!'
    redirect_to root_path
  end
end
