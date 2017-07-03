require 'bundler'

Bundler.setup :default

require File.expand_path('../app.rb', __FILE__)

run Sinatra::Application