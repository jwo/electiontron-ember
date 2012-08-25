CarrierWave.configure do |config|
  if Rails.env.production? || Rails.env.development?
    config.fog_credentials = {
      :provider                 => 'AWS',
      :aws_access_key_id        => ENV["AWS_ACCESS_ID"],
      :aws_secret_access_key    => ENV["AWS_SECRET_KEY"]
    }
    config.fog_directory = "electiontron-#{Rails.env}"
    config.storage = :fog
  else
    config.storage = :file
  end
end

