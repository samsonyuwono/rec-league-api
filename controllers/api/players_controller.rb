class Api::PlayersController < ApplicationController

  before_action :set_player, only: [:show, :update, :destroy]

  def index
    render json: Player.all
  end

  def create
    player = Player.new(player_params)
    if player.save
      render json: player
    else
      render json: { message: player.errors }, status: 400
    end
  end

  def show
    render json: @player
  end

  def update
    if @player.update(player_params)
      render json: @player
    else
      render json: { message: @player.errors }, status: 400
    end
  end

  def destroy
    if @player.destroy
      render json: @players
    else
      render json: { message: "Unable to remove this team" }, status: 400
    end
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :height, :weight, :image_url, :team_id, :likes)
  end
end
