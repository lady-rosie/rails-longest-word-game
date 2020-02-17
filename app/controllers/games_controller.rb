class GamesController < ApplicationController
  def new
    @letters = []
    9.times { @letters << ('A'..'Z').to_a.sample}
  end

  def score

  end
end
