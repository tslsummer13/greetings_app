class SessionsController < ApplicationController
  def new
    @name = session[:person]
    @favorite_color = session[:color]
  end

  def create
    session[:person] = params[:username]
    session[:color] = params[:color]
    redirect_to root_url
  end

  def destroy
    reset_session
    redirect_to root_url
  end
end
