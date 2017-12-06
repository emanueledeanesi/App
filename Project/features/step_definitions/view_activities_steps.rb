When('I click "Show"') do
 first(:link, "Show").click
end


Given("I am viewing the details of the activity") do
  visit activity_path(@activity)
end
