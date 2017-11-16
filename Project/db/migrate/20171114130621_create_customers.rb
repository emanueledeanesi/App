class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :surname
      t.string :company
      t.string :phone_number
      t.string :address
      t.string :email
      t.string :vat_number

      t.timestamps
    end
  end
end
