Given ("I am on the page of the activities") do
  visit activities_path
end

When ("I fill in the form of the activity with valid data") do
  fill_in 'Description', with: 'Example activity'
  select_date('2017-11-20', :from => 'Start date')
  select_date('2017-11-22', :from => 'End date')
  fill_in 'Total hours of work', with: '16.0'
  
  #gli altri campi sono compilati di default

  click_on 'Create Activity'
end

Then("I should see the new activity in the list") do
  activity = Activity.last
  expect(page.body).to have_content(activity.description)
end

When ("I fill in the form with an invalid total hours of work") do
  fill_in 'Description', with: 'Example activity'
  select_date('2017-11-20', :from => 'Start date')
  select_date('2017-11-22', :from => 'End date')
  fill_in 'Total hours of work', with: '-8.3'

  click_on 'Create Activity'
end

Then("I expect to get an error message") do
   expect(page.body).to have_content("error")
end
