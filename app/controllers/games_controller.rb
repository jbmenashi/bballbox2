class GamesController < ApplicationController
  before_action :find_game, only: [:show, :edit, :update, :destroy]

  def index
    @games = Game.all
  end

  def show
    #code
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game
    else
      flash[:errors] = @game.errors.full_messages
      redirect_to new_game_path
    end
  end

  def edit
    #code
  end

  def update
    if @game.update(game_params)
      redirect_to @game
    else
      flash[:errors] = @game.errors.full_messages
      redirect_to edit_game_path
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def find_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:date, :opponent, :home)
  end

end
