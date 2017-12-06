When('I click "Destroy"') do
 first(:link, "Destroy").click
end

Then ("I should not see that activity") do
   expect change(Activity, :count).by(-1)
end
