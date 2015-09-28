class SessionsController < ApplicationController
  def create
    current_user.set_spotify(oauth_data)
    redirect_to "/#{current_user.get_mood}"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  def spotify_login
    user              = User.find_or_create_from_auth(oauth_data)
    session[:user_id] = user.id
    redirect_to '/auth/spotify'
  end

  private
  def oauth_data
    request.env['omniauth.auth']
  end
end
