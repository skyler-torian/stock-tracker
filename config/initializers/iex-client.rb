IEX::Api.configure do |config|
    config.publishable_token = 'pk_03db2fa6b30c4d59a05cd17497e9f7aa

    ' # defaults to ENV['IEX_API_PUBLISHABLE_TOKEN']
    config.secret_token = 'sk_570865628c6247fbad3eae47b92391b3' # defaults to ENV['IEX_API_SECRET_TOKEN']
    config.endpoint = 'https://cloud.iexapis.com/v1' # use 'https://sandbox.iexapis.com/v1' for Sandbox
  end

# config.after_initialize do
#     Company.init
#   end