class Api::TeamsController < ApplicationController

  before_action :set_team, only: [:show, :update, :destroy]

  def index
    render json: Team.all
  end

  def create
    team = Team.new(team_params)
    if team.save
      render json: team
    else
      render json: { message: team.errors }, status: 400
    end
  end

  def show
    render json: @team.players
  end

  def update
    if @team.update(team_params)
      render json: @team
    else
      render json: { message: @team.errors }, status: 400
    end
  end

  def destroy
    if @team.destroy
      render json: @teams
    else
      render json: { message: "Unable to remove this team" }, status: 400
    end
  end

  private

    def set_team
      @team = Team.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:id, :name, :wins, :losses, :logo_url)
    end

end
