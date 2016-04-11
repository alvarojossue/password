require_relative "../lib/password.rb"

RSpec.describe "Password" do
	let (:my_password) {PasswordChecker.new}

	it "returns true if the password is longer than 7 characters" do
		expect( my_password.check_length("alvaroca")).to eq(true)
	end

	it "returns true if the password contains at least 1 letter, 1 number and 1 symbol" do
		expect( my_password.check_char("A123!")).to eq(true)
	end

	it "returns true if the password contains at least 1 uppercase and 1 lowercase" do
		expect( my_password.check_up_down("Al")).to eq(true)
	end

	it "returns true if the password does not contains the name nor the domain of the email" do
		expect( my_password.check_name_domain("alvaro@gmail.com","Managua2016")).to eq(true)
	end

	it "returns true if the password fulfill all the previous rules" do
		expect( my_password.check_name_domain("alvaro.castillo23@gmail.com","Alvaro12345!")).to eq(true)
	end
end