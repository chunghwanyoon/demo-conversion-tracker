require 'rails_helper'

RSpec.describe AuthService do
  describe "Auth Service Test" do
    context 'auth service test' do
      let(:member_param) {
        normal_test_params
      }
      it 'can build a member' do
        member = AuthService.instance.build_member(
          account_name: member_param[:account_name],
          plain_password: member_param[:password]
        )
        expect(member.account_name).to eq(member_param[:account_name])
      end
    end
  end
end
