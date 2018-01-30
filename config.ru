require 'rubygems'
require 'bundler'

require './hi'
Bundler.require

run Sinatra::Application

# map "/" do
#   run Sinatra::Application
# end
