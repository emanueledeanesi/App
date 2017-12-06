Feature: edit and view customers
  In order to correct the details of the customers
  As a user
  I want to edit customers

  Background:
    Given there is a customer

  Scenario: change the name of a customer
    Given there is a customer
    And I am on the page of the customers
    When I click "Edit"
    And I change the name to "stringa di prova"
    And I click on "Update Customer"
    Then I am on the page of the customers
    And the name of the customer is "stringa di prova"

  Scenario: can't leave the name blank
		Given there is a customer
		And I am on the page of the customers
		When I click "Edit"
		And I change the name to ""
		And I click on "Update Customer"
    Then I expect to get an error message

  Scenario: edit a customer with an invalid phone_number
    Given there is a customer
    And I am on the page of the customers
    When I click "Edit"
    And I change the phone_number to "58"
    And I click on "Update Customer"
    Then I expect to get an error message
