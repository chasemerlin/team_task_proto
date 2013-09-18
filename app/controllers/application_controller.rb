class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_user
    redirect_to login_path unless current_user
  end

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def team_users
    User.all.select {|user| user.id != current_user.id}
  end

  helper_method :current_user, :team_users, :require_user

end
