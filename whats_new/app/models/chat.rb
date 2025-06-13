class Chat < ApplicationRecord

  belongs_to :sender,   class_name: "User", foreign_key: "sender_id"

  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"

  has_many :messages, dependent: :destroy

  validates :sender_id, presence: { message: 'is always required'}

  validates :receiver_id, presence: { message: 'is always required'}

  validate :sender_and_receiver_are_different

  scope :mine, ->(user) {
    where(sender_id: user.id).or(where(receiver_id: user.id))}
  
  def other_user(current_user)
      current_user == sender ? receiver : sender
    end

  private
  def sender_and_receiver_are_different
    if sender_id == receiver_id
      errors.add(:sender_id, 'and Receiver cannot be equal')
    end
  end
end
