class InstagramController < ApplicationController
  def auth
    # This is a redirection to be able to user to login instagram
    client_id = Rails.application.credentials.instagram[:client_id]
    this_url = "http://localhost:3000/instagram/callback"
    redirect_to "https://api.instagram.com/oauth/authorize/?client_id=#{client_id}&redirect_uri=#{this_url}&response_type=code"
  end

  def callback
    # we received a code from instagram API

    get_token(params[:code])
    # now we request access_token

  end

  def index
  end

  private

  def get_token(my_code)
    url = "https://api.instagram.com/oauth/access_token"
    body = {
      client_id: Rails.application.credentials.instagram[:client_id],
      client_secret: Rails.application.credentials.instagram[:client_secret],
      grant_type: 'authorization_code',
      code: my_code
      redirect_uri: "http://localhost:3000/instagram/index"
    }
    p body
    my_request = HTTParty.post(url, body: body)
    p my_request
  end
end