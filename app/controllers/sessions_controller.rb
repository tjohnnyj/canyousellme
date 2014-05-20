class SessionsController < ApplicationController
  def create
    pitcher = Pitcher.from_omniauth(env["omniauth.auth"])
    session[:pitcher_id] = pitcher.id
    redirect_to root_url
  end

  def destroy
    session[:pitcher_id] = nil
    redirect_to root_url
  end

end
