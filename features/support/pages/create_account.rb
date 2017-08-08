class CreateAccount

	def initialize (browser)
		@driver = browser
	end

	def click_on_create_account
		 @driver.button(id: "SubmitCreate").click
	end 

	def enter_details(name,last_name,company,address1,address2,city,state,postcode,add_info,phone_number,mobile_number,address_alias)
		@driver.radio(id:'id_gender1').set
		@driver.text_field(id:'customer_firstname').set(name)
		@driver.text_field(id:'customer_lastname').set(last_name)
		@driver.text_field(id:'email').set(@email)
		@driver.text_field(id:'passwd').set(password)
		@driver.select_list(id: 'days').select_value('7')
		@driver.select_list(id: 'months').select_value('5')
		@driver.select_list(id: 'years').select_value('1993')
		@driver.checkbox(id: 'newsletter').set
		@driver.checkbox(id: 'option').set


		@driver.text_field(id: 'firstname').set(name)
		@driver.text_field(id:'lastname').set(last_name)
		@driver.text_field(id:'company').set(company)
		@driver.text_field(id: 'address1').set(address1)
		@driver.text_field(id:'address2').set(address2)
		@driver.text_field(id:'city').set(city)
		@driver.text_field(id:'id_state').select(state)
		@driver.text_field(id:'postcode').set(postcode)
		@driver.select_list(id:'id_country').set('United States')
		@driver.element(id:'other').set(add_info)
		@driver.text_field(id:'phone').set(name)
		@driver.text_field(id:'phone_mobile').set(mobile_number)
		@driver.text_field(id:'alias').set(address_alias)
		sleep 2
		@driver.button(id: 'submitAccount').click

	end

	def faker_details
		customer_firstname = Faker::Name.first_name
		customer_lastname = Faker::Name.last_name
		city = Faker::Address.city
		company = Faker::Company.name
		address1 = Faker::Address.street_address
		address2 = Faker::Address.secondary_address
		state = Faker::Address.state
		postcode = Faker::Address.state
		add_info = Faker::ChuckNorris.fact
		phone_number = Faker::PhoneNumber.cell_phone
		mobile_number = Faker::PhoneNumber.cell_phone
		address_alias = Faker::LordOfTheRings.location

		enter_details(customer_firstname,customer_lastname,city,company,address1,address2,state,postcode,add_info,phone_number,mobile_number,address_alias)
	end
end