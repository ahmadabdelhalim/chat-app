require 'rails_helper'

RSpec.describe Conversation, type: :model do
  context 'relations' do
    it { is_expected.to have_many(:messages) }
  end

  context 'validations' do
    subject { build(:conversation) }
    it { is_expected.to validate_presence_of(:telegram_chat_id) }
    it { is_expected.to validate_uniqueness_of(:telegram_chat_id) }
  end
end
