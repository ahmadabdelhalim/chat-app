require 'telegram/bot'

class TelegramBotService

  def initialize(message)
    @message = message.body
    @telegram_chat_id = message.conversation.telegram_chat_id
    token = '1028774150:AAFRDYvG9KSRDA2nakvSZbPFZIETNg7EHIg'
    @api = ::Telegram::Bot::Api.new(token)
  end

  def send_message_to_telegram
    @api.call('sendMessage', chat_id: telegram_chat_id, text: message)
  end

  private

  attr_reader :message, :telegram_chat_id, :api
end