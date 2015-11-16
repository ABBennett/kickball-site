require 'sinatra'
require 'pry'
require 'json'
file = File.read('roster.json')
roster_hash = JSON.parse(file)

get '/teams' do
  @teams_hash = roster_hash
  erb :index
end

get '/teams/:team_name' do
  @teams_hash = roster_hash
  @team_name = params[:team_name]
  # binding.pry
  erb :show
end
