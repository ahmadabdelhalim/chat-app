class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def callback
    dispatcher.new(webhook).process
    render json: { message: "success" }, head: :ok
  end

  def webhook
    params['webhook']
  end

  def dispatcher
    BotMessageDispatcher
  end
end