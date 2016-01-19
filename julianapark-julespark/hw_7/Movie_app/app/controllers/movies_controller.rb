class MoviesController < ApplicationController
  def index
  	@all_movies = Movie.all()
  end
end
