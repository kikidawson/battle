require 'sinatra'

class Battle<Sinatra::Application

  get "/" do
    erb :index
  end

  post '/names' do
    @player_one = params[:player_one_name]
    @player_two = params[:player_two_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
