require "sinatra"
require "sinatra/activerecord"

set :database, {adapter: 'postgresql', database: 'foo'}

class Cat < ActiveRecord::Base
	belongs_to :owner
end

class Owner < ActiveRecord::Base
	has_many :cats
end


get '/' do
	erb :index
end

get '/cats' do
	@cats = Cat.all()
	puts @cats
	erb :cats
end

get '/cats/:id' do
	@cat = Cat.find(params[:id]).owner.name
	return @cat
end

get '/owners' do
	@owners
end

get '/owners/:id' do
	@owner = Owner.find(params[:id])
	return @owner
end
