class ProfilesController < ApplicationController
  def show
    @current_page = 'profile'
    @user = current_user
    @my_workspaces = Workspace.where(user: current_user)
    @my_bookings = Booking.where(user: current_user)
    @bookings_of_my_workspaces = Booking.includes(:workspace).where(workspaces: { user: current_user })
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to profile_path
  end
end
