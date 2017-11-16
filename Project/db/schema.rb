# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171114130706) do

  create_table "activities", force: :cascade do |t|
    t.integer "customer_id"
    t.text "description"
    t.date "start_date"
    t.date "end_date"
    t.decimal "total_hours_of_work"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_activities_on_customer_id"
  end

  create_table "bills", force: :cascade do |t|
    t.integer "customer_id"
    t.date "date_of_issue"
    t.string "terms_of_payment"
    t.decimal "hourly_rate"
    t.integer "tax_rate"
    t.decimal "taxable"
    t.integer "withholding"
    t.decimal "total_hours"
    t.integer "discount"
    t.decimal "total_cost"
    t.string "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_bills_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "company"
    t.string "phone_number"
    t.string "address"
    t.string "email"
    t.string "vat_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
