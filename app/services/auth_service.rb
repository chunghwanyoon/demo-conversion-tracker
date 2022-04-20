class AuthService < BaseService
  def build_member(account_name:, plain_password:)
    duplicated_user = User.find_by_account_name(account_name)

    unless duplicated_user.nil?
      raise_duplicated_user_account
    else
      User.create(
        account_name: account_name,
        password_hashed: plain_password # TODO: hashing password
      )
    end
  end

  private

  def raise_duplicated_user_account
    raise WebCommonException.new("중복된 회원 아이디입니다.", 409)
  end
end
