require 'sinatra'
require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/flash'
require './models/booking.rb'
require './models/space.rb'
require './models/user.rb'
require './models/listing.rb'

class MakersBnB < Sinatra::Base
  enable :sessions

  get '/' do
    @spaces = Space.all
    p @spaces
    erb :index
  end

  get '/spaces' do
    @spaces = Space.all
    # @get_spaces = {}
    # @spaces.each { |space| @get_spaces[space.name] = space.description }
    # @get_spaces.to_json
    # "space_1 Space Mansion £50 Lovely space!"
  end

  get '/spaces/new' do
    erb :spaces_new
  end

  post '/spaces' do
    Space.create(name: params['name'], description: params['description'], price: params['price'])
    redirect('/')
  end

  get '/sign_up' do
    erb :sign_up
  end

  post '/users' do
    @users = User.all
    p @users
    p params
    User.create(name: params['name'], email: params['email'], password: params['password'])
    redirect '/welcome'
  end

  get '/welcome' do
    "Welcome, Meg"
  end
  
  run! if app_file == $0
end 



