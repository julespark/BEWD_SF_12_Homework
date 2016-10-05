class UsersController < ApplicationController
  before_action :load_user, only: [:edit, :show, :update]

  def index
    @user = User.all()
  end

  def new
    @user = User.new()
  end

  def create

  end

  def edit

  end

  def update

  end

  def show

  end

end
