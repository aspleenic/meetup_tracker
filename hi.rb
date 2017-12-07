require 'rubygems'
require 'bundler'
Bundler.setup

require 'sinatra'
# require 'rest-open-uri'
require 'json'
require 'rest-client'

# require 'datamapper'

get '/' do
  erb :index
end

# TODO: DRY this up!!


#  get '/:type' do
#    type = params[:type]
#    logger.info(params[:type])
#    api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=ruby&order=members&key=682d733452163d471f4656620674a53'
#    jhash = JSON.parse(api_result)
#    counter = jhash['results'].count
#    output = ''
#
#    jhash['results'].each do |j|
#      name = j['name']
#      city = j['city']
#      focus = j['who']
#      count = j['members']
#      contact = j['organizer_name']
#      link = j['link']
#      country = j['country']
#
#      output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
#    end
#    erb :meetup_table, :locals => {result: output, counter: counter}
#  end

# DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/meetup.db")

get '/ruby' do
  type = params[:type]
  logger.info(type)
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

get '/db' do
  type = params[:type]
  logger.info(type)
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=data&order=members&key=682d733452163d471f4656620674a53'
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

get '/cloud' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=cloud&order=members&key=682d733452163d471f4656620674a53'
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

get '/devops' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=devops&order=members&key=682d733452163d471f4656620674a53'
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end


get '/CTO' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=CTO&order=members&key=682d733452163d471f4656620674a53'
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

get '/java' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=java&order=members&key=682d733452163d471f4656620674a53'
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

get '/startups' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=startups&order=members&key=682d733452163d471f4656620674a53'
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

get '/security' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=security&order=members&key=682d733452163d471f4656620674a53'
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

get '/python' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=python&order=members&key=682d733452163d471f4656620674a53'
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

get '/magento' do
  api_result = RestClient.get 'http://api.meetup.com/groups.json/?&topic=magento&order=members&key=682d733452163d471f4656620674a53'
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
    country = j['country']

    output << "<tr><td>#{name}</td> <td><a href = '#{link}' target = _new>#{city}</a></td><td>#{country.upcase}</td><td>#{focus}</td> <td>#{count}</td><td>#{contact}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end
