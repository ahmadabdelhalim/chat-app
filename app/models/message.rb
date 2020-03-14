class Message < ApplicationRecord
  # relations
  belongs_to :conversation, inverse_of: :messages

  # validations
  validates :body, presence: true
end
