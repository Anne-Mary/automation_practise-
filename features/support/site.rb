require_relative "pages/MainPage"

module Site

	def main_page
		MainPage.new(@driver)
	end

end