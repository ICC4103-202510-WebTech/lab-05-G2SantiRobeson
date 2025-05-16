class MessagesController < ApplicationController

  before_action :set_message, only: [:show, :edit, :update]

  def index
    @messages = Message.all
  end

  def show
  end

  def new
    @message = Message.new
    @chats   = Chat.all
    @users   = User.all
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to messages_path
    else
      @chats = Chat.all
      @users = User.all
      render :new
    end
  end

  def edit
    @users = User.all
  end

  def update
    if @message.update(message_params)
      redirect_to messages_path
    else
      @chats = Chat.all
      @users = User.all
      render :edit
    end
  end
  
  private
  def message_params
    params.require(:message).permit(:chat_id, :user_id, :body)
  end

  def set_message
    @message = Message.find(params[:id])
  end
end