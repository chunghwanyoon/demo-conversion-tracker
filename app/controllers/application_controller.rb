class ApplicationController < ActionController::API
  before_action :signed_in?
  rescue_from WebCommonException, with: :web_common_exception_response

  def signed_in?
    unless self.class.to_s.include? "AuthController"
      if current_user.nil?
        raise_unauthorized_exception
      else
        # cookies[:auth_token] = {
        #   value: cookies[:auth_token],
        #   expires: 2.hours.from_now
        # }
      end
    end
  end

  def current_user
    true # TODO
  end

  def raise_unauthorized_exception
    WebCommonException.new("서비스를 사용하려면 로그인해주세요.", 401)
  end

  def web_common_exception_response(e)
    render :json => { code: e.code, message: e.message }
  end
end
