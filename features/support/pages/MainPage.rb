class MainPage

	def initialize (browser)
		@driver = browser
	end

	def visit
		@driver.goto 'http://automationpractice.com/index.php'
	end
end