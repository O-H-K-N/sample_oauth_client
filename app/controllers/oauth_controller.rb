require 'oauth2'

class OauthController < ApplicationController

  def index
  end

  def authorization
    client = OAuth2::Client.new(
      ENV["CLIENT_ID"],
      nil,
      # ENV["CLIENT_SECRET"],
      site: ENV["SITE"],
      authorize_url: ENV["AUTHORIZE_URL"],
    )

    authorize_url = client.auth_code.authorize_url(
      redirect_uri: ENV["CALLBACK_URI"],
      # scope: ENV["SCOPE"],
    )
    redirect_to authorize_url
  end

  def freee_authorization
    client = OAuth2::Client.new(
      ENV["FREEE_CLIENT_ID"],
      ENV["FREEE_CLIENT_SECRET"],
      site: ENV["FREEE_SITE"],
      authorize_url: ENV["FREEE_AUTHORIZE_URL"],
      token_url: ENV["FREEE_TOKEN_URL"],
      )

    authorize_url = client.auth_code.authorize_url(
      redirect_uri: ENV["FREEE_CALLBACK_URI"],
    # scope: ENV["SCOPE"],
      )
    redirect_to authorize_url
  end

  # 認可コードよりaccess_tokenを取得
  def callback
    client = OAuth2::Client.new(
      ENV["CLIENT_ID"],
      # nil,
      ENV["CLIENT_SECRET"],
      site: ENV["SITE"],
      authorize_url: ENV["AUTHORIZE_URL"],
    )

    @access_token = client.auth_code.get_token(
      params[:code],
      redirect_uri: ENV["CALLBACK_URI"],
    )

    # call API
    # response = token.get(
    #   ENV["API_URL"]
    # )
  end

  # 認可コードよりaccess_tokenを取得(freee用)
  def freee_callback
    client = OAuth2::Client.new(
      ENV["FREEE_CLIENT_ID"],
      # nil,
      ENV["FREEE_CLIENT_SECRET"],
      site: ENV["FREEE_SITE"],
      authorize_url: ENV["FREEE_AUTHORIZE_URL"],
      token_url: ENV["FREEE_TOKEN_URL"],
    )

    @access_token = client.auth_code.get_token(
      params[:code],
      redirect_uri: ENV["FREEE_CALLBACK_URI"],
    )

    # call API
    # response = token.get(
    #   ENV["API_URL"]
    # )
  end

end
