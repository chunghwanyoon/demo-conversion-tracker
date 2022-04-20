class GamesController < ApplicationController
  def index
    render :json => Game::Base.all.as_json(Game.serialize_params)
  end
end
