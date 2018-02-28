class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    user = User.new(username: params[:username], password: params[:password])
    if user.save
      token = encode_token({ user_id: user.id })
      render json: {user: user, jwt: token}
    else
    end
  end

  def me
    if @user
      render json: { user: @user, teams: @user.teams }
    else
      render json: { message: "Error"}
    end
  end
end
