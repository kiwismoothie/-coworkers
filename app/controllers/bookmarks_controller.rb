class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find_by(id: params[:id])
  end

  def create
    @workspace = Workspace.find(params[:workspace_id])
    @bookmark = Bookmark.new(workspace: @workspace, user: current_user)
    if @bookmark.save
      redirect_to workspace_path(@workspace), status: :see_other
    else
      render "workspaces/show", status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to workspace_path(@bookmark.workspace), status: :see_other
  end
end
