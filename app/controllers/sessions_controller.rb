class SessionsController < ApplicationController 
  def new
    redirect_to root_path if current_user
  end

  def create 
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'You are signed in'
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def destroy 
    session[:user_id] = nil
    redirect_to root_path, notice: "You are signed out"
  end
end