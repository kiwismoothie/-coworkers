class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @current_page = 'home'
    @workspaces = Workspace.all
  end
end
