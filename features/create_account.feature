Feature: Create account 
As a new user 
I want to be able to sign up and login

	Scenario: I am able to register 
		Given I access the homepage
		And click sign in 
		When I fill in the available field for create account
		And I click create account 
		And I fill all the required fields 
		Then I have a new account