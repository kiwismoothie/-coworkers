class BookingsController < ApplicationController
  def create
    string_dates = params[:booking][:start_date].split(" to ")
    start_date = Date.parse(string_dates[0])
    end_date = Date.parse(string_dates[1])
    @booking = Booking.new(start_date: start_date, end_date: end_date)
    @workspace = Workspace.find(params[:workspace_id])
    @booking.workspace = @workspace
    @booking.user = current_user
    if @booking.save
      redirect_to workspaces_path
    else
      render "workspaces/show", status: :unprocessable_entity
    end

  end
end
