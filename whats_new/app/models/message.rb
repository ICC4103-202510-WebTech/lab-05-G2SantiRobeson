class Message < ApplicationRecord

  belongs_to :chat, optional: true

  belongs_to :user, optional: true

  validates :chat_id, presence: { message: 'is always required'}
  validates :user_id, presence: { message: 'is always required'}
  validates :body, presence: { message: 'is always required'}
end
