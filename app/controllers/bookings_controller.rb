class BookingsController < ApplicationController
  def create
    string_dates = params[:booking][:start_date].split(" to ")
    start_date = Date.parse(string_dates[0])

    # Vérifiez si une date de fin est fournie
    end_date = string_dates.length > 1 ? Date.parse(string_dates[1]) : start_date

    @booking = Booking.new(start_date: start_date, end_date: end_date)
    @workspace = Workspace.find(params[:workspace_id])
    @booking.workspace = @workspace
    @booking.user = current_user
    @booking.status = "en cours"

    if @booking.save
      redirect_to dashboard_path, notice: 'Demande envoyée ! 🕒 Attendez maintenant la réponse. '
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
