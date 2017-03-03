require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    p params
    @game = $game
    @game.attack(@game.opponent)
    if @game.zero_points?(@game.opponent)
      redirect '/game_over'
    else
      @game.switch_turns
      erb :attack
    end
  end

  get '/game_over' do
    @game = $game
    erb :game_over
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
