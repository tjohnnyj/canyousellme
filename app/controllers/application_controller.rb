class ApplicationController < ActionController::Base
  protect_from_forgery      
  
  private
  def current_pitcher
    @current_pitcher ||= Pitcher.find(session[:pitcher_id]) if session[:pitcher_id]
  end
  helper_method :current_pitcher
end
