class ChatsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  before_action :set_chat, only: [:show, :edit, :update]
  
  def index
  end

  def show
  end

  def new
    @users = User.all
  end

  def create
    @chat = current_user.sent_chats.new(chat_params)
    if @chat.save
      redirect_to chats_path
    else
      @users = User.all
      render :new
    end
    
  end

  def edit
    @users = User.all
  end

  def update
    if @chat.update(chat_params)
      redirect_to chats_path
    else
      @users = User.all
      render :edit
    end
  end


  private
  def chat_params
    params.require(:chat).permit(:receiver_id)
  end

  def set_chat
    @chat = Chat.find(params[:id])
  end
end