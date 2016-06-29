require ('sinatra')
require ('sinatra/reloader')
require ('rspec')
also_reload('lib/**/*.rb')
require('./lib/scrabble')
require('pry')

get('/') do
  erb(:index)
end

get('/score') do
  @score = params.fetch('word').scrabble()
  erb(:score)
end
