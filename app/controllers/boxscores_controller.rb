class BoxscoresController < ApplicationController
  before_action :find_boxscore, only: [:show, :edit, :update, :destroy]

  def index
    @boxscores = Boxscore.all
  end

  def show
    #code
  end

  def new
    @boxscore = Boxscore.new
    @players = Player.all
    @games = Game.all
  end

  def create
    @boxscore = Boxscore.new(boxscore_params)
    if @boxscore.save
      redirect_to @boxscore
    else
      flash[:errors] = @boxscore.errors.full_messages
      redirect_to new_boxscore_path
    end
  end

  def edit
    #code
  end

  def update
    if @boxscore.update(boxscore_params)
      redirect_to @boxscore
    else
      flash[:errors] = @boxscore.errors.full_messages
      redirect_to edit_boxscore_path
    end
  end

  def destroy
    @boxscore.destroy
    redirect_to new_boxscore_path
  end

  private

  def find_boxscore
    @boxscore = Boxscore.find(params[:id])
  end

  def boxscore_params
    params.require(:boxscore).permit(:points, :rebounds, :assists, :player_id, :game_id)
  end

end
