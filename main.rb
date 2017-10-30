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

post '/cart' do
	@first_name = params[:first_name]
	@last_name = params[:last_name]
	@email = params[:email]
	@credit_card = params[:credit_card]
	@exp = params[:exp]
	@ccv = params[:ccv]
	params[:total] = 'total'
	params[:order] = 'order'

	
	Pony.mail(to: @email, from: 'orders@hexonomicon.com', subject: 'Order Confirmation from Hexonomicon', body: @order)

	erb :contact_conf
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