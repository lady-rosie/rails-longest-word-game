class GamesController < ApplicationController
  require 'open-uri'
  require 'json'

  def new
    @letters = []
    9.times { @letters << ('A'..'Z').to_a.sample }
  end

  def score
    @word = params[:word]
    @dictionnary = JSON.parse(open("https://wagon-dictionary.herokuapp.com/#{@word}").read)
    @grid = params[:grid]
  end
end
