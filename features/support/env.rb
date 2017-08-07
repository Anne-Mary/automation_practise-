require 'watir'
require_relative 'site'

World(Site)

driver = Watir::Browser.new :chrome

	Before do 
		@driver = driver
	end