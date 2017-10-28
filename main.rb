require 'sinatra'

get '/' do
	erb :home
end

get '/log_in' do
	erb :log_in
end

post '/log_in' do
	p params
	@first_name = params[:first_name]
	@last_name = params[:last_name]
	@email = params[:email]
	@password = params[:password]
	erb :home
end

		
	