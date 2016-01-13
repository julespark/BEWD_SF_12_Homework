class HashtagsController < ApplicationController
  before_action :load_hashtag, only: [:show, :edit, :update, :destroy]

  def index
		@hashtags = Hashtag.search_for(params[:q])
  end

  def show
  end

  def new
    @hashtag = Hashtag.new()
  end

  def create
    @hashtag = Hashtag.new(safe_hashtag_params)
    if @hashtag.save
      redirect_to hashtags_path
    else
      render 'index'
    end
  end

  def edit
  end

  def update
    @hashtag.update(safe_hashtag_params)
    redirect_to @hashtag
  end

  def destroy
    @hashtag.destroy
    redirect_to hashtags_path
  end

private

  def safe_hashtag_params
    params.require('hashtag').permit(:name)
  end

  def load_hashtag
    @hashtag = Hashtag.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash.now[:notice] = "Invalid Hashtag ID #{params[:id]}"
    redirect_to root_path
  end

end
