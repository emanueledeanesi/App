json.extract! bill, :id, :customer_id, :date_of_issue, :terms_of_payment, :hourly_rate, :tax_rate, :taxable, :withholding, :total_hours, :discount, :total_cost, :paid, :created_at, :updated_at
json.url bill_url(bill, format: :json)
