class BookmarksController < ApplicationController

  # def index
  #   @bookmarks = Bookmark.all
  # end

  # def show
  #   @bookmark = Bookmark.find_by(id: params[:id])
  # end

  def create
    @workspace = Workspace.find(params[:workspace_id])

    # current_user.bookmarked_workspaces << workspace unless current_user.bookmarked_workspaces.include?(workspace)
    @bookmark = Bookmark.new(workspace: @workspace, user: current_user)
    @bookmark.save
    redirect_to workspace_path(@workspace), status: :see_other
    # respond_to do |format|
    #   if @bookmark.save
    #     format.html { redirect_to workspace_path(@workspace) }
    #     format.json # Follows the classic Rails flow and look for a create.json view
    #   else
    #     format.html { render "workspaces/show", status: :unprocessable_entity }
    #     format.json # Follows the classic Rails flow and look for a create.json view
    #   end
    # end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to workspace_path(@bookmark.workspace), status: :see_other
  end
end
