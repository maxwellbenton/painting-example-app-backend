class ApplicationController < ActionController::API

  def current_user
    @user ||= User.find_by(id: user_id)
  end

  def user_id
    request.headers['Authorization']
  end

  def logged_in?
    !!current_user
  end
end
