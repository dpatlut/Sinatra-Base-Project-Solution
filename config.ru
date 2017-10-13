require "sinatra"
require "sinatra/activerecord"

set :database, {adapter: 'postgresql'}

require './controllers/apps_controller'
require './controllers/polls_controller'
require './controllers/users_controller'

run AppsController
use PollsController
use UsersController