class User < ApplicationRecord
  has_many :sent_chats, class_name: 'Chat', foreign_key: 'sender_id', dependent: :destroy

  has_many :received_chats, class_name: 'Chat', foreign_key: 'receiver_id', dependent: :destroy

  has_many :messages, dependent: :destroy

  has_many :received_messages, through: :received_chats, source: :messages

  validates :first_name, presence: { message: 'is always required'}

  validates :last_name, presence: { message: 'is always required'}

  validates :email, presence: { message: 'is always required'}

  validates :email, uniqueness: { message: 'already exists in our Data Base'}
end
