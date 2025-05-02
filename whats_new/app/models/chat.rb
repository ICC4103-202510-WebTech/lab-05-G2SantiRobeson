class Chat < ApplicationRecord
  belongs_to :sender, class_name: 'User', optional: true

  belongs_to :receiver, class_name: 'User', optional: true

  has_many :messages, dependent: :destroy

  validates :sender_id, presence: { message: 'is always required'}

  validates :receiver_id, presence: { message: 'is always required'}

  validate :sender_and_receiver_are_different

  private
  def sender_and_receiver_are_different
    if sender_id == receiver_id
      errors.add(:sender_id, 'and Receiver cannot be equal')
    end
  end
end
