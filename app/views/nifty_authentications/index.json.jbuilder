json.array!(@nifty_authentications) do |nifty_authentication|
  json.extract! nifty_authentication, :id
  json.url nifty_authentication_url(nifty_authentication, format: :json)
end
