class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.references :customer, foreign_key: true
      t.date :date_of_issue
      t.string :terms_of_payment
      t.decimal :hourly_rate
      t.integer :tax_rate
      t.decimal :taxable
      t.integer :withholding
      t.decimal :total_hours
      t.integer :discount
      t.decimal :total_cost
      t.string :paid

      t.timestamps
    end
  end
end
