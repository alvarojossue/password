class PasswordChecker

	def check_password(email, password)
		#PUT ALL METHODS HERE
		if check_length(password) && check_char(password) && check_up_down(password) && check_name_domain(email, password)
			true
		end
	end

	def check_length(password)
		if password.length > 7
			true
		end
	end

	def check_char(password)
		if password.match(/[a-zA-Z]/) && password.match(/[0-9]/) && password.match(/\W/)
			true
		else
			false
		end
	end

	def check_up_down(password)
		if password.match(/[a-z]/) && password.match(/[A-Z]/)
			true
		else
			false
		end
	end

	def check_name_domain(email, password)
		array_1 = email.split('@')
		array_2 = array_1[1].split('.')
		name = array_1[0]
		domain = array_2[0]

		if password.include?(name) || password.include?(domain)
			false
		else
			true
		end
	end
end