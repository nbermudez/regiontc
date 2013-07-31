    # Configuration for Amazon S3 should be made available through an Environment variable.
    # For local installations, export the env variable through the shell OR
    # if using Passenger, set an Apache environment variable.
    #
    # In Heroku, follow http://devcenter.heroku.com/articles/config-vars
    #
    # $ heroku config:add S3_KEY=your_s3_access_key S3_SECRET=your_s3_secret S3_REGION=eu-west-1 S3_ASSET_URL=http://assets.example.com/ S3_BUCKET_NAME=s3_bucket/folder
    
    # S3_SECRET: EuuG+iJJM1jRn9ki2APqwaucmUDdKgIalLk0oWwo
    # S3_KEY: AKIAIYHTSYTB5T2WGENA
    # S3_REGION: us-west-2
    # S3_BUCKET_NAME: regionsps_bucket/public
    # S3_ASSET_URL: regionsps_bucket.s3-website-us-east-1.amazonaws.com
    # Configuration for Amazon S3

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['S3_KEY'],                        # required
    :aws_secret_access_key  => ENV['S3_SECRET'],                        # required
    :region                 => ENV['S3_REGION'],                  # optional, defaults to 'us-east-1'
    :host                   => 's3-website-us-east-1.amazonaws.com',             # optional, defaults to nil
    :endpoint               => 'https://s3-website-us-east-1.amazonaws.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = ENV['S3_BUCKET_NAME']                    # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end