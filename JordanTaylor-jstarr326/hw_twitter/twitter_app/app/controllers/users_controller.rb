class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(safe_user_params)
    if @user.save
      redirect_to @user

    else
      render 'new'
    end
  end



  def edit
    @user = User.find(params[:id])
  end



  def update
    @user = User.find(params[:id])
    if @user.update(safe_user_params)

      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
  end
  private

  def safe_user_params

    params.require('user').permit(:name, :premium_member)
  end
end
