class TweetsController < ApplicationController
  def index
    @tweets = Tweet.search_for(params[:q])
  end

private

    def load_movie
      @tweets = Tweet.find params[:id]
    end
end