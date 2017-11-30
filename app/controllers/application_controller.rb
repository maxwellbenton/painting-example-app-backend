class ApplicationController < ActionController::API

  def current_user
    @user ||= User.find_by(id: user_id)
  end

  def user_id
    puts 'FGGHADGJHDAHKJDAHKJADHLKADADJ'
    puts request.headers['Authorization']
    # byebug
    decoded_token.first['user_id']
  end

  def decoded_token
    begin
       JWT.decode(request.headers['Authorization'], ENV['secret_key'])
     rescue JWT::DecodeError
      [{}]
     end
  end
end
