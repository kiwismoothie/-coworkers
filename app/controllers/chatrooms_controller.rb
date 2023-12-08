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
    @messages = @chatroom.messages
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
