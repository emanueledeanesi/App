class Bill < ApplicationRecord
  belongs_to :customer

  validates :customer,  presence: true
  validates :date_of_issue,  presence: true
  validates :terms_of_payment,  presence: true
  validates :hourly_rate, presence: true,
  :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ },
  :numericality => {:greater_than => 0}
  validates :discount,presence: true, :numericality => {:greater_than => -1}

def total_hours
  @activities = customer.activities
  @activities.each do |a|
    @total_hours = a.total_hours
  end
  @total_hours
end

def get_taxable
 @taxable = ((self.total_hours * self.hourly_rate)).round(2)
end

def get_total_cost
  @total_cost = (@taxable - (@taxable * self.discount/100)).round(2)
  @total_cost = (@total_cost + (@total_cost * self.tax_rate/100) - (@total_cost * withholding/100)).round(2
)
end

end
