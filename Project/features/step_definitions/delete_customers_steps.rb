Then ("I should not see that customer") do
  expect change(Customer, :count).by(-1)
end
