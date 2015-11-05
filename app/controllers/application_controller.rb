class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  helper_method :current_user
  helper_method :all_tags

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to login_path, alert: "Slow down slugger! You'll have to login:" if current_user.nil?
  end

  def all_tags
    @all_tags = Tag.all
  end
end
