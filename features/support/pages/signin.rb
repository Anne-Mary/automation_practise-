class SignIn

	def initialize (browser)
		@driver = browser
	end

	def click_on_sign_in
		 @driver.link(class: 'login').click
	end 

	def add_email
		@driver.text_field(id: "email_create").set('anne@gmail.com')
	end
end