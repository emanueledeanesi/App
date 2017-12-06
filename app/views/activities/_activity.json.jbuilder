json.extract! activity, :id, :customer_id, :description, :start_date, :end_date, :total_hours_of_work, :created_at, :updated_at
json.url activity_url(activity, format: :json)
