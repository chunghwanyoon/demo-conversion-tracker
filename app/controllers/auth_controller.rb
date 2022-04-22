class AuthController < ApplicationController

  def sign_up
    user = AuthService.instance.build_member(
      account_name: sign_up_params[:account_name],
      plain_password: sign_up_params[:password]
    )

    render :json => user.show
  end

  private

  def sign_up_params
    params.permit(:account_name, :password)
  end
end
