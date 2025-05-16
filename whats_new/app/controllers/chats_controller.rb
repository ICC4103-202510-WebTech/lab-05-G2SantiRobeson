class ChatsController < ApplicationController

  before_action :set_chat, only: [:show, :edit, :update]
  
  def index
    @chats = Chat.all
  end

  def show
  end

  def new
    @chat  = Chat.new
    @users = User.all
  end

  def create
    @chat = Chat.new(chat_params)
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
    params.require(:chat).permit(:sender_id, :receiver_id)
  end

  def set_chat
    @chat = Chat.find(params[:id])
  end
end