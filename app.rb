require "sinatra"
require "sinatra/activerecord"

set :database, {adapter: 'postgresql'}

get '/' do
	"Hello NYCDA"
end

