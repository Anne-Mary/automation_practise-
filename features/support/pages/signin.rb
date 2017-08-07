class SignIn

	def initialize (browser)
		@driver = browser
	end

	def click_on_sign_in
		 @driver.link(class: 'login').click
	end 
end