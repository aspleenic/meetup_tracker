require 'rubygems'
require 'bundler'
Bundler.setup

require 'sinatra' 
require 'rest-open-uri'
require 'json'
require 'rest-client'


get '/' do
  erb :index
end

get '/ruby' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=ruby&order=members&key=682d733452163d471f4656620674a53'
  jhash = JSON.parse(api_result)
  counter = jhash['results'].count
  output = ''

  jhash['results'].each do |j|
    name = j['name']
    city = j['city']
    focus = j['who']
    count = j['members']
    contact = j['organizer_name']
    link = j['link']
    
    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td> <td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

get '/php' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=php&order=members&key=682d733452163d471f4656620674a53'
  jhash = JSON.parse(api_result)
  counter = jhash['results'].count
  output = ''

  jhash['results'].each do |j|
    name = j['name']
    city = j['city']
    focus = j['who']
    count = j['members']
    contact = j['organizer_name']
    link = j['link']
    
    output << "<tr><td>#{name}</td> <td>#{city}</td> <td>#{focus}</td> <td>#{count}</td><td>#{contact}</td><td><a href = '#{link}' target = _new>Link</a></td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

get '/nodejs' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=nodejs&order=members&key=682d733452163d471f4656620674a53'
  jhash = JSON.parse(api_result)
  counter = jhash['results'].count
  output = ''

  jhash['results'].each do |j|
    name = j['name']
    city = j['city']
    focus = j['who']
    count = j['members']
    contact = j['organizer_name']
    link = j['link']
    
    output << "<tr><td>#{name}</td> <td>#{city}</td> <td>#{focus}</td> <td>#{count}</td><td>#{contact}</td><td><a href = '#{link}' target = _new>Link</a></td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

