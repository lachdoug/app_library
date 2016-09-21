class AdminsController < ApplicationController

  def edit
    @user = current_user
    respond_to do |format|
      format.html
    end
  end

  def update
    @user = current_user
    respond_to do |format|
      if @user.valid_password?(strong_params[:current_password])
        if @user.update(strong_params.to_h.without('current_password'))
          format.html { redirect_to apps_path, notice: "Successfully updated admin password."}
        else
          format.html { render :edit }
        end
      else
        format.html { render :edit, notice: "Incorrect current password." }
      end
    end
  end

  private

  def strong_params
    params.require(:user).permit(
      :current_password, :password, :password_confirmation)
  end

end
