class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    # if params[:user][:skills].present?
    #   @user.skills << params[:user][:skills]
    # end
    @user.update(user_params)
    redirect_to profil_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :address, :linkedin_url, :description, :photo, :skills => [], :desired_skills => []).tap do |whitelisted|
      whitelisted[:skills] = params[:user][:skills].split(',') if params[:user][:skills].present?
      whitelisted[:desired_skills] = params[:user][:desired_skills].split(',') if params[:user][:desired_skills].present?
    end
  end
end
