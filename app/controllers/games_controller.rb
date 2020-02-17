class GamesController < ApplicationController
  require 'open-uri'
  require 'json'

  def new
    @letters = []
    8.times { @letters << ('A'..'Z').to_a.sample }
    @letters << ['A', 'E', 'I', 'O', 'U', 'Y'].sample
  end

  def score
    @end_time = Time.now
    @word = params[:word]
    @dictionnary = JSON.parse(open("https://wagon-dictionary.herokuapp.com/#{@word}").read)
    @grid = params[:grid]
    @score = params[:word].length * 10
  end
end
