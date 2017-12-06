class Activity < ApplicationRecord
belongs_to :customer

validates :customer, presence: true
validates :description, presence: true,length: { maximum: 140 }
validates :start_date, presence: true
validates :end_date, presence: true
validate :end_date_after_start_date?
validates :total_hours_of_work, presence: true,
:format => { :with => /\A\d+(?:\.\d{0,1})?\z/ },
:numericality => {:greater_than => 0}

def end_date_after_start_date?
  if end_date < start_date
    errors.add :end_date, "must be after start date"
  end
end

def total_hours
  @total_hours = customer.activities.sum(:total_hours_of_work)
end

end
