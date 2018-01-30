require 'rubygems'
require 'bundler'
require './lib/app'

require './hi'
Bundler.require

map "/" do
  run Sinatra::Application
end
