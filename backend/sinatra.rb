#Copyright © 2015 Macoscope sp. z o.o. All rights reserved.

require 'sinatra'

set :bind, '0.0.0.0'

get '/calendars' do
  File.read('calendars.json')
end

get '/calendars/1/events' do
  File.read('events.json')
end

get '/users' do
  File.read('users.json')
end

post '/calendars/*/events' do
  File.read('event.json')
end
