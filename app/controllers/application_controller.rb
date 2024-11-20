class ApplicationController < ActionController::Base
  private

  def authenticate_admin
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == 'password'
    end
  end
end

