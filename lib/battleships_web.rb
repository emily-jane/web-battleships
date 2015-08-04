require 'sinatra/base'
require_relative 'game'

class BattleshipsWeb < Sinatra::Base
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
		redirect '/new_game'
  end

	get '/new_game' do
		$game = Game.new(@name,'computer')
		erb :new_game
	end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
