require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/place')

get('/') do
  @place = Place.all()
  erb(:index)
end

post('/place') do
  place = params.fetch('place')
  location = Place.new(place)
  location.save()
  erb(:success)
end

post('/clear') do
  Place.clear()
  erb(:clear)
end
