ENV["FACEBOOK_APP_ID"] = '470993246315243'
ENV["FACEBOOK_SECRET"] = '135eb15f48801ef5321b45e03da3726c'

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
end