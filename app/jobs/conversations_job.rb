class ConversationsJob < ApplicationJob
  queue_as :default
 
  def perform(*conversations)
  end
end