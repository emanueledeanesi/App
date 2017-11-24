Feature: edit and view bills
  In order to see and correct the details of the bills
  As a user
  I want to edit and view bills

  Background:
    Given there is a bill associated to "Andrea Rossi"

    Scenario: change the hourly_rate of a bill
  		Given there is a bill
  		And I am viewing the details of the bill
  		When I click on "Edit"
  		And I change the hourly_rate to "10.0"
  		And I click on "Update Bill"
  		Then I am on the page of the bills
  		And the hourly_rate of the bill is "10.0"

    Scenario: can't leave the hourly_rate blank
  		Given there is a bill
  		And I am viewing the details of the bill
  		When I click on "Edit"
  		And I change the hourly_rate to ""
  		And I click on "Update Bill"
  		Then I should see an error

    Scenario: edit a bill with an invalid hourly_rate
      Given there is a bill
      And I am viewing the details of the bill
      When I click on "Edit"
      And I change the hourly_rate to "-4.3"
      And I click on "Update Bill"
      Then I should see an error

    Scenario: show a bill
      Given I am on the page of the bills
      When I click on "Show"
      Then I should see the details of the bill

    Scenario: delete a bill
      Given I am on the page of the bills
      When I click on "Destroy"
      Then I am on the page of the bills
      And I should not see that bill
