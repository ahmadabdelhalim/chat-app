describe BotMessageDispatcher do
  let(:params) {
    {
      'message' => {
        'text' => "whatever",
        'chat' => {
          'id' => Faker::Number.unique.number(digits: 10)
        }
      }
    }
  }

  it "expects the service to recive the params correctly" do
    bot = BotMessageDispatcher.new(params).process
    expect(bot).to eq(true)
  end
end