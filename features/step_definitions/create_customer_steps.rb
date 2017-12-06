Given("I am on the page of the customers") do
  visit customers_path
end

When("I click on {string}") do |string|
 click_on string
end

When ("I fill in the form of the customer with valid data") do
  fill_in 'Name', with: 'Andrea'
  fill_in 'Surname', with: 'Rossi'
  fill_in 'Company', with: 'Andre Rossi'
  fill_in 'Address', with: 'Roma'
  fill_in 'Phone number', with: '0123456789'
  fill_in 'Vat number', with: '01234567890'
  fill_in 'Email', with: 'andrea.rossi@example.com'

  click_on 'Create Customer'
end

Then("I should see the new customer in the list") do
  customer = Customer.last
  expect(page.body).to have_content(customer.name)
end

When ("I fill in the form with an invalid phone number") do
  fill_in 'Name', with: 'Andrea'
  fill_in 'Surname', with: 'Rossi'
  fill_in 'Company', with: 'Andre Rossi'
  fill_in 'Address', with: 'Roma'
  fill_in 'Phone number', with: '58'
  fill_in 'Vat number', with: '01234567890'
  fill_in 'Email', with: 'andrea.rossi@example.com'

  click_on 'Create Customer'
end

Then("I should see an error") do
  expect(page).to have_css('#error_explanation')
end
