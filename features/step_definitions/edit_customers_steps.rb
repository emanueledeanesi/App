Given("there is a customer") do
  @customer = FactoryBot.create(:customer)
end

When("I change the name to {string}") do |string|
visit edit_customer_path(@customer)
fill_in 'Name', with: string
end

Then("the name of the customer is {string}") do |string|
expect(page.body).to have_content(string)
end

When("I change the phone_number to {string}") do |string|
visit edit_customer_path(@customer)
fill_in 'Phone number', with: string
end
