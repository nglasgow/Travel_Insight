OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end


# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :twitter, "FACEBOOK_KEY", "FACEBOOK_SECRET"
#   # Find these values on the Facebook App page
# end
