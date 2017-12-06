require 'test_helper'

class BillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bill = bills(:one)
  end

  test "should get index" do
    get bills_url
    assert_response :success
  end

  test "should get new" do
    get new_bill_url
    assert_response :success
  end

  test "should create bill" do
    assert_difference('Bill.count') do
      post bills_url, params: { bill: { customer_id: @bill.customer_id, date_of_issue: @bill.date_of_issue, discount: @bill.discount, hourly_rate: @bill.hourly_rate, paid: @bill.paid, tax_rate: @bill.tax_rate, taxable: @bill.taxable, terms_of_payment: @bill.terms_of_payment, total_cost: @bill.total_cost, total_hours: @bill.total_hours, withholding: @bill.withholding } }
    end

    assert_redirected_to bill_url(Bill.last)
  end

  test "should show bill" do
    get bill_url(@bill)
    assert_response :success
  end

  test "should get edit" do
    get edit_bill_url(@bill)
    assert_response :success
  end

  test "should update bill" do
    patch bill_url(@bill), params: { bill: { customer_id: @bill.customer_id, date_of_issue: @bill.date_of_issue, discount: @bill.discount, hourly_rate: @bill.hourly_rate, paid: @bill.paid, tax_rate: @bill.tax_rate, taxable: @bill.taxable, terms_of_payment: @bill.terms_of_payment, total_cost: @bill.total_cost, total_hours: @bill.total_hours, withholding: @bill.withholding } }
    assert_redirected_to bill_url(@bill)
  end

  test "should destroy bill" do
    assert_difference('Bill.count', -1) do
      delete bill_url(@bill)
    end

    assert_redirected_to bills_url
  end
end
