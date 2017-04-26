require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    "Testing infrastructure working!"
  end

  get '/' do
    p params
    erb(:index)
    params = [:name]
  end

  run! if app_file == $0

end
