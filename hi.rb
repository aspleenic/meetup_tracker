require 'rubygems'
require 'sinatra'
require 'open-uri'
require 'json'
require 'rmeetup'
require 'rest_client'
require 'addressable/uri'

# get '/' do
# 	RMeetup::Client.api_key = "682d733452163d471f4656620674a53"
#   results = RMeetup::Client.fetch(:events,{:zip => "14226", })
#   results.each do |result|
#     print "#{result.name}"
#   end
# end

get '/' do
  api_result = RestClient.get (Addressable::URI.parse('http://api.meetup.com/groups.json/?zip=14226&topic=ruby&order=members&key=682d733452163d471f4656620674a53').normalize.to_str)
  api_result = JSON.parse(api_result)
  if api_result.empty?
    "You failed"
  else
    api_result
  end
  # erb :meetup_table, :locals => {api_result: api_result}
end