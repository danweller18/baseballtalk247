class Admins::RegistrationsController < Devise::RegistrationsController
  def new
    flash[:error] = 'Sorry! Something went wrong!'
    redirect_to root_path
  end

  def create
    flash[:error] = 'Sorry! Something went wrong!'
    redirect_to root_path
  end

  def update
    new_params = params.require(:admin).permit(:email, :username, :current_password, :password, :password_confirmation)
    change_password = true
    if params[:admin][:password].blank?
      params[:admin].delete("password")
      params[:admin].delete("password_confirmation")
      new_params = params.require(:admin).permit(:email, :username)
      change_password = false
    end

    @admin = Admin.find(current_admin.id)
    is_valid = false

    if change_password
      is_valid = @admin.update_with_password(new_params)
    else
      is_valid = @admin.update_without_password(new_params)
    end

    if is_valid
      set_flash_message :notice, :updated
      sign_in @admin, :bypass => true
      redirect_to after_update_path_for(@admin)
    else
      render "edit"
    end
  end
end
