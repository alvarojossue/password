require_relative('lib/password.rb')
require "sinatra"


my_password_object = PasswordChecker.new

get "/" do 
	erb :home
end

post "/login" do
	@email = params[:email]
	@password = params[:password]

	@result = my_password_object.check_password(@email, @password)
	erb :password_results
end


