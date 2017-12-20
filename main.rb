require 'sinatra'
require 'pony'
require 'dm-core'
require 'rubygems'
# require 'haml'

# Dir['vendor/*'].each do |lib|
#   $:.unshift(File.join(File.dirname(__FILE__), lib, 'lib'))
# end
# class Todo
#   include DataMapper::Resource
#   property :id, Integer, :serial => true
#   property :text, String
# end

# configure do
#   # Heroku has some valuable information in the environment variables.
#   # DATABASE_URL is a complete URL for the Postgres database that Heroku
#   # provides for you, something like: postgres://user:password@host/db, which
#   # is what DM wants. This is also a convenient check wether we're in production
#   # / not.
#   DataMapper.setup(:default, (ENV["DATABASE_URL"] || "sqlite3:///#{Dir.pwd}/development.sqlite3"))
#   DataMapper.auto_upgrade!
# end

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
	@curse_first = params[:curse_first]
	@curse_last = params[:curse_last]
	@first_name = params[:first_name]
	@last_name = params[:last_name]
	@email = params[:email]
	@credit_card = params[:credit_card]
	@exp = params[:exp]
	@ccv = params[:ccv]
	@total = params[:total]
	@order = params[:order]
	p params

	
	if @email != '' && @credit_card !="" && @ccv != "" && @exp != "" && @first_name != "" && @last_name != "" && @curse_first != "" && @curse_last != ""
		erb :order_conf
	else
		erb :order_fail
	end
end

get '/order_conf' do 
	if @email != ""
		Pony.mail(to: @email, from: 'orders@hexonomicon.com', subject: 'Order Confirmation from Hexonomicon', :body => 'Thank you for your order!')
	end
	erb :order_conf
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