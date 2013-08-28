
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
    
    output << "<tr><td>#{name}</td> <td>#{city}</td> <td>#{focus}</td> <td>#{count}</td></tr>"
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
    
    output << "<tr><td>#{name}</td> <td>#{city}</td> <td>#{focus}</td> <td>#{count}</td></tr>"
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
    
    output << "<tr><td>#{name}</td> <td>#{city}</td> <td>#{focus}</td> <td>#{count}</td></tr>"
  end
  erb :meetup_table, :locals => {result: output, counter: counter}
end

