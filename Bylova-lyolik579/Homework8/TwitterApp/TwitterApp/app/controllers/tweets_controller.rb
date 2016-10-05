class TweetsController < ApplicationController
  before_action :load_tweet only: [:edit, :show, :update]

  def index
    @tweet = Tweet.all()
  end

  def new
    @tweet = Tweet.new()
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
  end

  def show

  end

private

  def safe_tweet_params
    params.require('user').permit(:name, :premium_member)
  end

  def load_user
    @user = User.find(params[:id])
  end
 
end
