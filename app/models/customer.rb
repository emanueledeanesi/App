class Customer < ApplicationRecord
  has_many :activities, dependent: :destroy
  has_many :bills, dependent: :destroy

  validates :name,  presence: true, length: { maximum: 50 }
  validates :surname,  presence: true, length: { maximum: 50 }
  validates :company,  presence: true, length: { maximum: 50 }
  validates :address,  presence: true, length: { maximum: 50 }
  validates :phone_number,  presence: true, length: { is: 10 }
  validates :vat_number, presence: true, length: { is: 11}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                     format: { with: VALID_EMAIL_REGEX }


  def fullname
    "#{name} #{surname}"
  end

  def to_s
    fullname
  end
end
