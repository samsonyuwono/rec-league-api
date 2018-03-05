class Api::AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      token = encode_token({ user_id: user.id })
      render json: { user: user, jwt: token }
    else
      render json: { errors: { password: "Wrong password. Please try again"}}
    end
  end

end
