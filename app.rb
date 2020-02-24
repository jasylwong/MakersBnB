require 'sinatra'
# require 'sinatra-base'
require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/flash'

set :database, "sqlite3:project-name.sqlite3"

class MakersBnB < Sinatra::Base
  get '/' do
    File.read('./views/index.html')
  end

  get '/spaces' do
    "space_1 Space Mansion £50 Lovely space!"
  end

  post '/spaces' do
    redirect('/spaces')
  end

  get '/spaces/new' do
    erb :spaces_new
  end

  run! if app_file == $0
end 

require './models'

