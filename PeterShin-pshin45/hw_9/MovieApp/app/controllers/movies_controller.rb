class MoviesController < ApplicationController
  before_action :load_movie, only: [:update, :edit, :show]

  def index
    @movies = Movie.search_for(params[:q])
  end

  def new
    @movie = Movie.new()
  end

  def create
    @movie = Movie.new(safe_movie_params)
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @movie.update(safe_movie_params)
    redirect_to @movie
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_path
  end

  def show
  end

  private

    def safe_movie_params
      params.require('movie').permit(:title, :description, :year_released)
    end

    def load_movie
      @movie = Movie.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash.now[:notice] = "Invalid Shirt ID #{params[:id]}"
      redirect_to root_path
    end
 
end
