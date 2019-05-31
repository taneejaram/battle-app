require 'sinatra/base'
#require 'shotgun'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    #@player_2_points = params[:player_2_points]
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect 'play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
