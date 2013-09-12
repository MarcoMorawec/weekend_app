CarrierWave.configure do |config|

  if Rails.env.development?
    config.storage = :file
  else
    config.storage = :fog
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['AWS_ACCES_KEY']                        # required
    :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY']                        # required

  }
  config.fog_directory  = ENV['AWS_BUCKET']                    # required

end