class MoviesController < ApplicationController
  before_action :load_movie, only: [:update, :edit, :show]

  def index
    @movies = Movie.all()
  end

  def new
    @movie = Movie.new()
  end

  def create
     @movie = Movie.new(save_movie_params)
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    
  end

  def show
    @movie = Movie.find_by_title(params[:title])
  end

  private

    def save_movie_params
     params.require('movie').permit(:title, :description, :year_released, :rating)
    end

    def load_movie 
      @movie = Movie.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash.now[:notice] = "Invalid movie ID #{params[:id]}"
      redirect_to root_path
    end
    

 
end
