class MessagesController < ApplicationController
  before_action :load_entities

  def create
    @message = MessageCreatorService.new(conversation: @conversation, 
                                         body: params.dig(:message, :body)).create
  end
  
  protected
  
  def load_entities
    @conversation = Conversation.find(params.dig(:message, :conversation_id))
  end
end
