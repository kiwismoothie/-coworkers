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

  def accept
    # récupère le booking
    @booking = Booking.find(params[:id])
    # on change le status pour le passer en valider
    @booking.status = "acceptée"
    # on sauvegarde
    @booking.save
    # on redirige vers la page de dashboard
    redirect_to dashboard_path
  end

  def decline
    # récupère le booking
    @booking = Booking.find(params[:id])
    # on change le status pour le passer en refuser
    @booking.status = "déclinée"
    # on sauvegarde
    @booking.save
    # on redirige vers la page de dashboard
    redirect_to dashboard_path
  end
end
