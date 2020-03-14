class ConversationsController < ApplicationController
  before_action :load_entities

  def index
    @conversations = Conversation.all
  end

  def show
    @message = Message.new(conversation: @conversation)
    @conversation_messages = @conversation.messages
  end

  protected

  def load_entities
    @conversations = Conversation.all
    @conversation = Conversation.find(params[:id]) if params[:id]
  end
end
