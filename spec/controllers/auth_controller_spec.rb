require 'rails_helper'

RSpec.describe AuthController, type: :controller do
  describe "POST /api/v1/sign_up" do
    it "signup route test" do
      post :sign_up, params: { account_name: "blahblahbalh", password: "testck" }
      puts response
      puts response.body
      expect(response).to be_successful
      expect(response).to have_http_status(:success)
    end
  end
end
