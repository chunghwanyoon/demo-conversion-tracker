module GlobalTestHelper
  module UserHelper
    def normal_test_params
      { account_name: "chunghwanfana", password: "passwordfor" }
    end
  end
end

RSpec.configure do |config|
  config.include GlobalTestHelper::UserHelper
end
