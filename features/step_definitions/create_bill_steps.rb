Given("I am on the page of the bills") do
  visit bills_path
end

When ("I fill in the form of the bill with valid data") do
  select_date('2017-11-20', :from => 'Date of issue')
  fill_in 'Hourly rate', with: '10.0'
  fill_in 'Discount', with: '0.0'

  #gli altri campi sono compilati di default
  
  click_on 'Create Bill'
end

Then("I should see the new bill in the list") do
  bill = Bill.last
    expect(page.body).to have_content(bill.hourly_rate)
end

When ("I fill in the form with an invalid hourly rate") do
  select_date('2017-11-20', :from => 'Date of issue')
  fill_in 'Hourly rate', with: '0.0'
  fill_in 'Discount', with: '0.0'

  click_on 'Create Bill'
end

Then("I should see an error") do
  expect(page).to have_css('#error_explanation')
end
