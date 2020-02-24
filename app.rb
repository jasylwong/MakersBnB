require 'sinatra'
# require 'sinatra-base'
require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/flash'

set :database, "sqlite3:project-name.sqlite3"

class MakersBnB < Sinatra::Base
  get '/' do
    "MakersBnB"
  end
end


require './models'

