class MessagesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  before_action :set_all_chats, only: [:new, :edit]
  before_action :set_all_users, only: [:new, :edit]

  def index
  end

  def show
  end

  def new
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

  def set_all_chats
    @chats = Chat.all
  end

  def set_all_users
    @users = User.all
  end

end