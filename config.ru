require 'hi'
require 'rubygems'
require 'bundler'

Bundler.require

map "/" do
  run Sinatra::Application
end