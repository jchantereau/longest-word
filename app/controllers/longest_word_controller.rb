class LongestWordController < ApplicationController
  def game
    @grid = generate_grid(9).join(" ")
  end

  def score
  end

  def generate_grid(grid_size)
    Array.new(grid_size) { ('A'..'Z').to_a[rand(26)] }
  end
end

