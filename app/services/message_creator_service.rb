class MessageCreatorService

  def initialize(conversation:, body:)
    @conversation = conversation
    @body = body
  end

  def create
    create_message
  end

  def create_message
    ActiveRecord::Base.transaction do
      message = Message.create!(
        conversation: @conversation,
        body: body
      )

      send_message_to_telegram(message)
    end
  end

  def send_message_to_telegram(message)
    TelegramBotService.new(message).send_message_to_telegram
  end

  private

  attr_reader :conversation, :body
end