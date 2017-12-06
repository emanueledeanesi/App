FactoryBot.define do
  factory :activity do
    description 'Example activity'
    start_date  '2017-11-19'
    end_date  '2017-11-20'
    total_hours_of_work '16.0'
    customer
  end
end
