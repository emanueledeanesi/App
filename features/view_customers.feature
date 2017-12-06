Feature: edit and view customers
  In order to see the details of the customers
  As a user
  I want to view customers

  Scenario: show a customer
    Given I am on the page of the customers
    When I click "Show"
    Then I am viewing the details of the customer
