class MatchesController < ApplicationController
before_action :find_params, only: [:show, :destroy, :edit, :update]

  def index
    @matches = Match.all
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new(match_params)
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
    params.require(:match).permit(:title, :location, :date, :time)
  end

  def find_params
    @match = Match.find(params[:id])
  end

end
