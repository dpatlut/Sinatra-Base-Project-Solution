require "sinatra"
require "sinatra/activerecord"

set :database, {adapter: 'postgresql'}

get '/' do
	erb :index
end

get '/users' do
	"Hello NYCDA"
end

get '/users/:id' do
	"Hello NYCDA"
end

get '/polls' do
	"Hello NYCDA"
end

get '/polls/:id' do
	"Hello NYCDA"
end
