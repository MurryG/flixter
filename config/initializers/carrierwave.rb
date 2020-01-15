# config/initializers/carrierwave.rb

CarrierWave.configure do |config|
  config.storage = :aws                             # required
  config.aws_bucket = ENV.fetch('AWS_BUCKET')       # required
  config.aws_acl = 'private'

  config.aws_credentials = {
    access_key_id:     ENV['AWS_ACCESS_KEY_ID'],               # required
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],            # required
    region:            ENV.fetch('AWS_REGION')      # REQUIRED
  }
end