Given("there is an activity") do
  @activity = FactoryBot.create(:activity)
end

When('I click "Edit"') do
 first(:link, "Edit").click
end

When("I change the description to {string}") do |string|
visit edit_activity_path(@activity)
fill_in 'Description', with: string
end

Then("the description of the activity is {string}") do |string|
expect(page.body).to have_content(string)
end
