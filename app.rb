require 'sinatra/base'
require 'sinatra'
require './lib/computer'
require './lib/player'
require './lib/result'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:player])
    @player_name = @player.name
    erb :name
  end

  post '/play' do
    erb :play
  end

  post '/result' do
    @player_move = params[:player_move]
    computer = Computer.new
    @computer_move = computer.move
    result = Result.new(@player_move, @computer_move)
    @winner = result.winner(@player_move, @computer_move)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
