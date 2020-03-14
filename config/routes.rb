Rails.application.routes.draw do
  root controller: :conversations, action: :index
  
  resources :messages
  resources :conversations

  post '/webhooks/telegram_vbc43efbf1343a012454dvd4bfab34l1' => 'webhooks#callback'
end
