Feature: create a bill
  In order to keep track of the bills of a customer
  As a user
  I want to create a new bill

  Background:
    Given there is a customer called "Andrea Rossi"

  Scenario: create a valid bill
    Given I am on the page of the bills
    When I click on "New Bill"
    And I fill in the form with valid data
    Then I am on the page of the bills
    And I should see the new bill in the list

  Scenario: error when entering invalid hourly rate
    Given I am on the page of the bills
    When I click on "New Bill"
    And I fill in the form with an invalid hourly rate
    Then I should see an error
