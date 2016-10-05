class TweetsController < ApplicationController
  def index
    @tweets = Tweet.search_for(params[:q])
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
