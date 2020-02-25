require 'sinatra'
# require 'sinatra-base'
require 'sinatra/activerecord'
require 'sinatra/base'
require 'sinatra/flash'
require './models/booking.rb'
require './models/space.rb'
require './models/user.rb'
require './models/listing.rb'

class MakersBnB < Sinatra::Base
  get '/' do
    "MakersBnB"
  end
end




