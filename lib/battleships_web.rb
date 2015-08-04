require 'sinatra/base'

class BattleshipsWeb < Sinatra::Base
	set :views, Proc.new { File.join(root,"..","views") }
  get '/' do
    'Hello BattleshipsWeb!'
    erb :index
  end

  get '/new_game' do
  	@name = params[:name]
  	erb :new_game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
