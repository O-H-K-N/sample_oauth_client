# Sample Oauth Client

This app is an example of OAuth2 client. 

Things you may want to cover:

* Ruby version 2.6.5

* sample of [root_path]/.env.development
```
## ID for your app registered at the provider
CLIENT_ID=GbW-...........
## Secret
CLIENT_SECRET=0iG...........
## URL to the provider
SITE=http://localhost:3000/
AUTHORIZE_URL=oauth/authorize
CALLBACK_URI=http://localhost:3002/callback
OAUTH_PROVIDER_URL=http://localhost:3000/oauth/authorize
TOKEN_URL=oauth/token
SCOPE=public......

# API_URL=http://localhost:3000/v1/me

## freee用
## ID for your app registered at the provider
FREEE_CLIENT_ID=d66f0o...........
## Secret
FREEE_CLIENT_SECRET=0e1f7yg...........
## URL to the provider
FREEE_SITE=https://accounts.secure.freee.co.jp/
FREEE_AUTHORIZE_URL=public_api/authorize
FREEE_CALLBACK_URI=http://localhost:3002/freee_callback
FREEE_OAUTH_PROVIDER_URL=https://accounts.secure.freee.co.jp/public_api/authorize
FREEE_TOKEN_URL=public_api/token
```
