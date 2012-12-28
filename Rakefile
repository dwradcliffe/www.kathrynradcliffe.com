require 'rubygems'
require 'bundler/setup'
require 'simple_site'

SimpleSite::Tasks.new do |site|
  site.buckets = ['www.kathrynradcliffe.com']
end

AWS::S3::Base.establish_connection!(
  :access_key_id     => ENV['ETCH_AWS_ACCESS_KEY_ID'],
  :secret_access_key => ENV['ETCH_AWS_SECRET_ACCESS_KEY']
)
