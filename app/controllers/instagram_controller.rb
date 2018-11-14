class InstagramController < ApplicationController
  def auth
    # This is a redirection to be able to user to login instagram
    client_id = Rails.application.credentials.instagram[:client_id]
    this_url = "http://localhost:3000/instagram/callback"
    redirect_to "https://api.instagram.com/oauth/authorize/?client_id=#{client_id}&redirect_uri=#{this_url}&response_type=code"
  end

  def callback
    # we received a code from instagram API
    code = params[:code]
  end
end
