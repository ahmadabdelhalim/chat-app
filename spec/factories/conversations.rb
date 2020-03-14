FactoryBot.define do
  factory :conversation do
    telegram_chat_id { Faker::Number.unique.number(digits: 10) }
  end
end
