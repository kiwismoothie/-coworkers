class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show]
  before_action :check_participation, only: [:show]

  def index
    @current_page = 'chatrooms'
    @user1_chatrooms = current_user.user1_chatrooms
    @user2_chatrooms = current_user.user2_chatrooms
  end

  def show
    @current_page = 'chatrooms'
    @message = Message.new
  end

  def create_chatroom
    @workspace = Workspace.find(params[:workspace_id])

    if current_user != @workspace.user
      @chatroom = Chatroom.find_or_create_by(user1: current_user, user2: @workspace.user)

      if @chatroom.persisted?
        redirect_to chatroom_path(@chatroom)
      else
        redirect_to workspace_path(@workspace), alert: "Impossible de créer la chatroom."
      end
    else
      redirect_to workspaces_path, alert: "Vous ne pouvez pas créer une chatroom avec vous-même."
    end
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end

  def check_participation
    unless [@chatroom.user1_id, @chatroom.user2_id].include?(current_user.id)
      redirect_to root_path, alert: "Vous n'avez pas accès à cette chatroom."
    end
  end
end
