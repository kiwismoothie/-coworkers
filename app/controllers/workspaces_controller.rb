class WorkspacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @workspaces = Workspace.all
    if params[:query].present?
      # Use the Mapbox API to geocode the location
      response = RestClient.get "https://api.mapbox.com/geocoding/v5/mapbox.places/#{params[:query]}.json?access_token=#{ENV['MAPBOX_API_KEY']}"
      location_data = JSON.parse(response.body)

      if location_data["features"].present?
        # Extract the coordinates from the Mapbox response
        coordinates = location_data["features"].first["center"]

        # Filter workspaces within a 100km radius using coordinates
        @workspaces = @workspaces.near([coordinates[1], coordinates[0]], 100, units: :km)
      end
    end

    @markers = @workspaces.geocoded.map do |workspace|
      {
        lat: workspace.latitude,
        lng: workspace.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: { workspace: workspace }),
        marker_html: render_to_string(partial: "marker", locals: { workspace: workspace })
      }
    end
  end

  def show
    @workspace = Workspace.find(params[:id])
    @booking = Booking.new
    @bookmark = Bookmark.find_by(workspace: @workspace, user: current_user) || Bookmark.new

  end

  def new
    @workspace = Workspace.new
  end

  def create
    @workspace = Workspace.new(workspace_params)
    @workspace.user = current_user
    if @workspace.save
      redirect_to workspace_path(@workspace)
    else
      render :new
    end
  end

    private

  def workspace_params
    params.require(:workspace).permit(:name, :address, :capacity, :internet_connexion, :smoking, :animals, :price,
                                      :description, photos: [])
  end
end
