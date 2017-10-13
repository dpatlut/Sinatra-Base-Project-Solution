require "sinatra"
require "sinatra/activerecord"

set :database, {adapter: 'postgresql'}

get '/' do
	erb :index
end

get '/users' do
	erb :users
end

get '/users/:id' do
	"Hello NYCDA"
end

get '/polls' do
	erb :polls
end

get '/polls/:id' do
	"Hello NYCDA"
end
