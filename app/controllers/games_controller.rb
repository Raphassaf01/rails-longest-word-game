require "json"
require "open-uri"

class GamesController < ApplicationController
  def new
    @display_grid = ('A'..'Z').to_a.sample(9)
  end

  def score
    @answer = params[:answer]
    url = "https://wagon-dictionary.herokuapp.com/#{answer}"
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)
    if user[found] = true
      if

      end
    end
  end
end
