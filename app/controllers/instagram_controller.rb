class InstagramController < ApplicationController
  def auth
    # This is a redirection to be able to user to login instagram
    client_id = Rails.application.credentials.instagram[:client_id]
    this_url = "http://localhost:3000/instagram/callback"
    redirect_to "https://api.instagram.com/oauth/authorize/?client_id=#{client_id}&redirect_uri=#{this_url}&response_type=code"
  end

  def callback
    # we received a code from instagram API in this controller
    # now we request access_token
    basic_response = get_token(params[:code])
    @token = basic_response.parsed_response["access_token"] # a string
    @user = basic_response.parsed_response["user"] # a hash

    #we need one more information with an other request
    user_self = get_user_self(@token)
    @count = user_self.parsed_response["data"]["counts"]

  end

  private

  def get_user_self(token)
    url = "https://api.instagram.com/v1/users/self/?access_token=#{@token}"
    my_get = HTTParty.get(url)
  end
  def get_token(my_code)
    url = "https://api.instagram.com/oauth/access_token"
    body = {
      client_id: Rails.application.credentials.instagram[:client_id],
      client_secret: Rails.application.credentials.instagram[:client_secret],
      grant_type: 'authorization_code',
      code: my_code,
      redirect_uri: "http://localhost:3000/instagram/callback"
    }
    my_request = HTTParty.post(url, body: body)
  end
end
