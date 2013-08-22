require 'rubygems'
require 'bundler/setup'
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
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=ruby&order=members&key=682d733452163d471f4656620674a53'
  jhash = JSON.parse(api_result)
  results = jhash['results'][0]['name']
  erb :meetup_table, :locals => {result: results}
end

get '/php' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=php&order=members&key=682d733452163d471f4656620674a53'
  jhash = JSON.parse(api_result)
  results = jhash['results'][0]['name']
  erb :meetup_table, :locals => {result: results}
end

get '/nodejs' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=nodejs&order=members&key=682d733452163d471f4656620674a53'
  jhash = JSON.parse(api_result)
  results = jhash['results'][0]['name']
  erb :meetup_table, :locals => {result: results}
end