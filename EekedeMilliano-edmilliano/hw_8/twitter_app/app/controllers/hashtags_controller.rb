class HashtagsController < ApplicationController
  def new
  	@hashtags = Hashtag.all
  end
end
