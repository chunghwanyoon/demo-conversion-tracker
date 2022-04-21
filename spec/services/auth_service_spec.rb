require 'rails_helper'

RSpec.describe AuthService, type: :integration do
  describe "Auth Service Test" do
    it 'can build a member' do
      member = AuthService.instance.build_member(account_name: "service_test_member_name", plain_password: "123")
      expect(member.account_name).to eq("service_test_member_name")
    end
  end

end
