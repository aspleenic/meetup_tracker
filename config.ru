require 'rubygems'
require 'bundler'

# require './hi'
Bundler.require

map "/" do
  run Sinatra::Application
end
