require 'rails_helper'

RSpec.describe Message, type: :model do
  context 'relations' do
    it { is_expected.to belong_to(:conversation) }
  end
  
  context 'validations' do
    subject { build(:message) }
    it { is_expected.to validate_presence_of(:body) }
  end
end
