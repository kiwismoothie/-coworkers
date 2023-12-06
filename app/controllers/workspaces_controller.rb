class WorkspacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @workspaces = Workspace.all
  end

  def show
    @workspace = Workspace.find(params[:id])
    @booking = Booking.new
  end
end
