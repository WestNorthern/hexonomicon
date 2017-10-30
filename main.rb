require 'sinatra'
require 'pony'

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


get '/services' do
	erb :services
end
		
get '/cart' do
	erb :cart
end
	
get '/contact' do
	erb :contact
end

post '/contact' do
	@email = params[:email]
	@message = params[:message]
	Pony.mail(:to => 'rrichardson610@gmail.com', :from => @email, :subject => 'Contact Us', :body => @message)

	erb :contact_conf
end

get '/about' do
	erb :about
end