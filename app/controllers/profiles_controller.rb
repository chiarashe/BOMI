class ProfilesController < ApplicationController
  def new
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:goal, :date_birth, :location, :cedula_profesional, :CURP, :profession) # add other attributes as needed
  end
end
