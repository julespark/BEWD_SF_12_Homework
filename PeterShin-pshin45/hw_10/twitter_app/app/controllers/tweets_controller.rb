class TweetsController < ApplicationController
  before_action :load_tweet, only: [:show, :edit, :update, :destroy]

  def index
		@tweets = Tweet.search_for(params[:q])
	end

  def show
  end

  def new
    @tweet = Tweet.new()
  end

  def create
    @tweet = Tweet.new(safe_tweet_params)
    if @tweet.save
      redirect_to tweets_path
    else
      render 'index'
    end
  end

  def edit
  end

  def update
    @tweet.update(safe_tweet_params)
    redirect_to @tweet
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_path
  end

private

  def safe_tweet_params
    params.require('tweet').permit(:text)
  end

  def load_tweet
    @tweet = Tweet.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash.now[:notice] = "Invalid Tweet ID #{params[:id]}"
    redirect_to root_path
  end

end
