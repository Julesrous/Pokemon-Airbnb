class ChatroomsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom)
    @chatrooms_user = []
    @chatrooms.each do |chatroom|
      if chatroom.users.include?(current_user)
        @chatrooms_user << chatroom
      end
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
  end
  
  def create
    @chatroom = Chatroom.new
    @user1 = current_user
    @user2 = Pokemon.find(params["pokemon_id"]).user
    @chatroom.name = "Discussion between #{@user1.first_name} and #{@user2.first_name}"
    @participation1 = Participation.new
    @participation2 = Participation.new
    @participation1.user = @user1
    @participation1.chatroom = @chatroom
    @participation2.user = @user2
    @participation2.chatroom = @chatroom
    @participation1.save
    @participation2.save
    @chatroom.save
    authorize @chatroom

    redirect_to chatroom_path(@chatroom)
  end
end
