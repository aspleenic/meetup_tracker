require 'rubygems'
require 'sinatra'
require 'open-uri'
require 'json'
require 'rmeetup'
require 'rest_client'
require 'addressable/uri'

get '/' do
  erb :index
end

get '/ruby' do
  api_result = RestClient.get (Addressable::URI.parse('http://api.meetup.com/groups.json/?topic=ruby&order=members&key=682d733452163d471f4656620674a53').normalize.to_str)
  result = JSON.parse(api_result) 
  erb :meetup_table, :locals => {result: result} 
end

get '/php' do
  api_result = RestClient.get (Addressable::URI.parse('http://api.meetup.com/groups.json/?topic=php&order=members&key=682d733452163d471f4656620674a53').normalize.to_str)
  result = JSON.parse(api_result) 
  erb :meetup_table, :locals => {result: result}
end

get '/nodejs' do
  api_result = RestClient.get (Addressable::URI.parse('http://api.meetup.com/groups.json/?topic=nodejs&order=members&key=682d733452163d471f4656620674a53').normalize.to_str)
  result = JSON.parse(api_result) 
  erb :meetup_table, :locals => {result: result}
end