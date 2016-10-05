class UsersController < ApplicationController
  before_action :load_user, only: [:show, :edit, :update, :destroy]

  def index
		@users = User.search_for(params[:q])
	end

  def show
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(safe_user_params)
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit   
  end

  def update 
    @user.update(safe_user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

private

  def safe_user_params
    params.require('user').permit(:name, :premium_member)
  end

  def load_user
    @user = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash.now[:notice] = "Invalid User ID #{params[:id]}"
    redirect_to root_path
  end

end
