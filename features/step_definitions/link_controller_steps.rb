Given ("I am on the home page") do
  visit static_pages_home_path
end

When('I click "Customers"') do
 visit customers_path
end

When('I click "Home"') do
 first(:link, "Home").click
end
