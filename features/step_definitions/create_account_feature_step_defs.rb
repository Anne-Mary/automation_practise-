Given(/^I access the homepage$/) do
  main_page.visit
end

And(/^click sign in$/) do
  sign_in.click_on_sign_in
  sleep 2
end

When(/^I fill in the available field for create account$/) do
  sign_in.add_email
  sleep 2
end

And(/^I click create account$/) do
  create_account.click_on_create_account
  sleep 2
end

And(/^I fill all the required fields$/) do
  create_account.faker_gem_details
end

Then(/^I have a new account$/) do
  pending # Write code here that turns the phrase above into concrete actions
end