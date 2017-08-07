require_relative "pages/MainPage"

module Site

	def main_page
		MainPage.new(@driver)
	end

	def sign_in
		SignIn.new(@driver)
	end

end