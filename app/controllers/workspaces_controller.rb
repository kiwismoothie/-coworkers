class WorkspacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @workspaces = Workspace.all
    if params[:query].present?
      @workspaces = Workspace.global_search(params[:query])
    end

    if params[:ambiance].present?
      @workspaces = @workspaces.where(ambiance: params[:ambiance] ==  "on")
    end

    if params[:internet_connexion].present?
      @workspaces = @workspaces.where(internet_connexion: params[:internet_connexion] ==  "on")
    end

    if params[:smoking].present?
      @workspaces = @workspaces.where(smoking: params[:smoking] ==  "on")
    end

    if params[:animals].present?
      @workspaces = @workspaces.where(animals: params[:animals] ==  "chien" || "chat" || "autre")
    end

    if @workspaces.empty?
      @workspaces = Workspace.all
      @no_result = true
    end

    @markers = @workspaces.geocoded.map do |workspace|
      {
        lat: workspace.latitude,
        lng: workspace.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {workspace: workspace}),
        marker_html: render_to_string(partial: "marker", locals: {workspace: workspace})
      }
    end
  end

  def show
    @workspaces = Workspace.all
    @workspace = Workspace.find(params[:id])
    @booking = Booking.new
    @bookmark = Bookmark.new
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
