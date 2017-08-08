require_relative "pages/MainPage"

module Site

	def main_page
		MainPage.new(@driver)
	end

	def sign_in
		SignIn.new(@driver)
	end

	def create_account
		CreateAccount.new(@driver)
	end

end