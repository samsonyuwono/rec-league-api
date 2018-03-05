class ApplicationController < ActionController::API

  def encode_token(payload)
    token = JWT.encode(payload, "flobble")
  end

  def current_user
    if header = request.headers['Authorization']
      decoded_token = JWT.decode(token, "flobble", true, {algorithm: 'HS256'})
      user_id = decoded_token[0]["user_id"]
      @user = User.find(user_id)
    end
  end

end
