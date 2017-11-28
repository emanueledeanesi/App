Feature: create a customer
  In order to keep track of customer of my company
  As a user
  I want to create a new customer

  Scenario: create a valid customer
    Given I am on the page of customers
    When I click on "New Customer"
    And I fill in the form with valid data
    Then I am on the page of customers
    And I should see the new customer in the list

  Scenario: error when entering invalid phone number
    Given I am on the page of customers
    When I click on "New Customer"
    And I fill in the form with an invalid phone number
    Then I should see an error
