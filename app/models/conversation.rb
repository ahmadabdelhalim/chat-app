class Conversation < ApplicationRecord
  # relations
  has_many :messages, dependent: :destroy, inverse_of: :conversation

  # validations
  validates :telegram_chat_id, presence: true
  validates_uniqueness_of :telegram_chat_id
end
