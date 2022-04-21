require 'rails_helper'

RSpec.describe AuthController, type: :controller do
  describe "POST /api/v1/sign_up" do
    it "this is how ther fuckaslkdfjdsaklf" do
      post :sign_up, params: { account_name: "blahblahbalh", password: "testisSuck" }
      puts response
      puts response.body
      expect(response).to be_successful
    end
  end
end
