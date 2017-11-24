Feature: method total cost
  In order to calculate the amount of total cost for customer
  As a user
  I want to see the total payment for every bill

  Background:
    Given there are activities associated to a customer

  Scenario: create a bill
    Given I am on the page of the bills
    When I click on "New Bill"
    And I fill in the form with valid data
    And I click on "Create Bill"
    Then I am on the page of the bills
    And I should see the right value of total_cost

  Scenario: edit a bill
    Given I am on the page of the bills
    When I click on "Edit Bill"
    And I change the discount
  	And I click on "Update Bill"
    Then I am on the page of the bills
    And I should see the right value of total_cost
