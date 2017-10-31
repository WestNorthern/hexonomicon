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
	@first_name = params[:first_name]
	@last_name = params[:last_name]
	@email = params[:email]
	@password = params[:password]
	params[:controller] = 'home'
	p params
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

post '/order_conf' do
	@first_name = params[:first_name]
	@last_name = params[:last_name]
	@email = params[:email]
	@credit_card = params[:credit_card]
	@exp = params[:exp]
	@ccv = params[:ccv]
	p params

	
	if @email != ''
		erb :order_conf
		Pony.mail(to: @email, from: 'orders@hexonomicon.com', subject: 'Order Confirmation from Hexonomicon', :body => 'Thank you for your order!')
	else
		erb :order_fail
	end
end

get '/order_conf' do 
	if @email != ""
		
	
	erb :order_conf
	else
		erb :order_fail
	end
end

get '/order_fail' do
	erb :order_fail
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