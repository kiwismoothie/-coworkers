class WorkspacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @workspaces = Workspace.all
    if params[:query].present?
      @workspaces = Workspace.global_search(params[:query])
    end
    # The `geocoded` scope filters only flats with coordinates
    @markers = @workspaces.geocoded.map do |workspace|
      {
        lat: workspace.latitude,
        lng: workspace.longitude
      }
    end

  end

  def show
    @workspace = Workspace.find(params[:id])
    @booking = Booking.new
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
