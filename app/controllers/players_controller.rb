class PlayersController < ApplicationController
  before_action :find_player, only: [:show, :edit, :update, :destroy]

  def index
    @players = Player.all
  end

  def show
    #code
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to @player
    else
      flash[:errors] = @player.errors.full_messages
      redirect_to new_player_path
    end
  end

  def edit
    #code
  end

  def update
    if @player.update(player_params)
      redirect_to @player
    else
      flash[:errors] = @player.errors.full_messages
      redirect_to edit_player_path
    end
  end

  def destroy
    @player.destroy
    redirect_to players_path
  end

  private

  def find_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :age, :team, :jersey)
  end

end
