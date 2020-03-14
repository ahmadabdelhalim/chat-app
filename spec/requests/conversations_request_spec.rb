require 'rails_helper'

RSpec.describe "Conversations", type: :request do
  describe 'GET #index' do
    subject { get '/conversations' }

    it 'renders index page' do
      expect(subject).to render_template :index
      expect(response).to have_http_status(200)
    end
  end
end
