class MatchesController < ApplicationController
before_action :find_params, only: [:show, :destroy, :edit, :update]
before_action :authenticate_player!, except: [:index]
  def index
    @matches = Match.all.order('created_at DESC')
  end

  def new
    @match = current_player.matches.build
  end

  def create
    @match = current_player.matches.build(match_params)
    if @match.save
      redirect_to @match
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @match.destroy
    @match.avatar = nil
    @match.save
    redirect_to matches_path
  end

  def update

    if @match.update(match_params)
      redirect_to @match
    else
      render 'edit'
    end
  end

  private

  def match_params
    params.require(:match).permit(:avatar,:title, :location, :date, :time)
  end

  def find_params
    @match = Match.find(params[:id])
  end

end
