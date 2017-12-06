Feature: delete customers
  In order to administer the customers
  As a user
  I want to delete customers

  Background:
    Given there is a customer

  Scenario: delete a customer
    Given I am on the page of the customers
    When I click "Destroy"
    Then I am on the page of the customers
    And I should not see that customer
