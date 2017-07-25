class UsersController < ApplicationController

  before_action :find_user, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show

  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def find_user
    @user = User.find_by(id: params[:id])
  end
end