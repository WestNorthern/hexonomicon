require 'sinatra'
require 'pony'

get '/' do
	params[:controller] = 'home'
	erb :home
end

get '/log_in' do
	params[:controller] = 'login'
	erb :log_in
end

post '/log_in' do
	p params
	@first_name = params[:first_name]
	@last_name = params[:last_name]
	@email = params[:email]
	@password = params[:password]
	params[:controller] = 'home'
	erb :home
end


get '/services' do
	params[:controller] = 'services'
	erb :services
end
		
get '/cart' do
	params[:controller] = 'cart'
	erb :cart
end
	
get '/contact' do
	params[:controller] = 'contact'
	erb :contact
end

post '/contact' do
	@email = params[:email]
	@message = params[:message]
	Pony.mail(:to => 'rrichardson610@gmail.com', :from => @email, :subject => 'Contact Us', :body => @message)
	params[:controller] = 'contact'
	erb :contact_conf
end

get '/about' do
	params[:controller] = 'about'
	erb :about
end