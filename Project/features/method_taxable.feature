Feature: method taxable
  In order to calculate the taxable from total hours and hourly rate for a customer
  As a user
  I want to see the amount of taxable for every customer

  Background:
    Given there are activities associated to a customer

  Scenario: create a bill
    Given I am on the page of the bills
    When I click on "New Bill"
    And I fill in the form with valid data
    And I click on "Create Bill"
    Then I am on the page of the bills
    And I should see the right value of taxable

  Scenario: edit a bill
    Given I am on the page of the bills
    When I click on "Edit Bill"
    And I change the hourly_rate
  	And I click on "Update Bill"
    Then I am on the page of the bills
    And I should see the right value of taxable
