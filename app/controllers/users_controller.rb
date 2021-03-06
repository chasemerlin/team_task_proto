class UsersController < ApplicationController 
  before_filter :require_user, only: [:show]

  def show 
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      AppMailer.send_welcome_email(@user).deliver
      redirect_to login_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end
end