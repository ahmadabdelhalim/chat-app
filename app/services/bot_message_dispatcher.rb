class BotMessageDispatcher

  def initialize(data)
    @message_body = data['message']['text']
    @telegram_chat_id = data['message']['chat']['id']
  end

  def process
    find_or_create_conversation
  end

  private

  attr_reader :message_body, :telegram_chat_id

  def find_or_create_conversation
    conversation = Conversation.find_by(telegram_chat_id: telegram_chat_id)
    if conversation
      create_message(conversation)
    else
      new_conversation = Conversation.create!(telegram_chat_id: telegram_chat_id)
      create_message(new_conversation)
    end
  end

  def create_message(conversation)
    message = Message.new
    message.conversation = conversation
    message.body = message_body
    message.save
  end
end