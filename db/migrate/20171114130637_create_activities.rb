class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.references :customer, foreign_key: true
      t.text :description
      t.date :start_date
      t.date :end_date
      t.decimal :total_hours_of_work

      t.timestamps
    end
  end
end
