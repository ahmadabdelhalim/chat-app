FactoryBot.define do
  factory :message do
    conversation { nil }
    body { "MyText" }
  end
end
