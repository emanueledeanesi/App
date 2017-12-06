json.extract! customer, :id, :name, :surname, :company, :phone_number, :address, :email, :vat_number, :created_at, :updated_at
json.url customer_url(customer, format: :json)
