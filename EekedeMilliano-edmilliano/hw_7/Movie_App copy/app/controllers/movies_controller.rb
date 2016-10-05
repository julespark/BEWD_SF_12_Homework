class MoviesController < ApplicationController
  def show
  end

  def index
  	@all_movies = Movie.all()
  end

end
