require "game"

class LongestWordController < ApplicationController
  def game
    @grid = generate_grid(9)
    @start = Time.now
  end

  def score
    #récupe l'attempt

    @attempt = params[:attempt]
    @grid = params[:grid].split("")

    #calculer le score
    @result = run_game(@attempt, @grid, params[:start].to_datetime, Time.now)

    #mettre dans une variable d'instance

  end
end

