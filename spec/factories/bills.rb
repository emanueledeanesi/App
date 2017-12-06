FactoryBot.define do
  factory :bill do
    date_of_issue '2017-11-21'
    terms_of_payment  '30'
    hourly_rate '10.0'
    tax_rate '22'
    withholding '20'
    discount  '0.0'
    paid  'no'
    total_hours = @total_hours
    taxable = @get_taxable
    total_cost = @get_total_cost
    customer

  end
end
