require 'sinatra/base'
require_relative 'game'

class BattleshipsWeb < Sinatra::Base

	enable :sessions

	set :views, Proc.new { File.join(root,"..","views") }
  get '/' do
    'Hello BattleshipsWeb!'
    erb :index
  end

	get '/register' do
		erb :register
	end

  post '/register' do
		@name = params[:name]
	  redirect '/register' if @name == ''
		redirect '/new-game'
  end

	get '/new-game' do
		session[:game] = Game.new(@name,'computer')
		options = {:size => 10, :cell => Cell, :number_of_pieces => 10}
		session[:board] = Board.new(options)
		erb :new_game
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
