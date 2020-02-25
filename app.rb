require 'sinatra'
require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/flash'
require './models/booking.rb'
require './models/space.rb'
require './models/user.rb'
require './models/listing.rb'

class MakersBnB < Sinatra::Base
  enable :session

  get '/' do
    @spaces = Space.all
    erb :index
  end

  get '/spaces' do
    @spaces = Space.all
    @get_spaces = {}
    @spaces.each { |space| @get_spaces[space.name] = space.description }
    @get_spaces.to_json
    # "space_1 Space Mansion £50 Lovely space!"
  end

  post '/spaces' do
    redirect('/spaces')
  end

  get '/spaces/new' do
    erb :spaces_new
  end

  get '/sign_up' do
    "Please enter your details"
  end
  
  run! if app_file == $0
end 



