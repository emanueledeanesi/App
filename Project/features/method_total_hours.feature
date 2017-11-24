Feature: method total hours
  In order to sum all the hours of work of the activities associated to a customer
  As a user
  I want to see the amount of the total hours worked for every customer

  Background:
    Given there are activities associated to a customer

  Scenario: create a bill
    Given I am on the page of the bills
    When I click on "New Bill"
    And I fill in the form with valid data
    And I click on "Create Bill"
    Then I am on the page of the bills
    And I should see the right value of total_hours

  Scenario: edit an activity
    Given I am on the page of the activities
    When I click on "Edit Activity"
    And I change the total_hours_of_works
  	And I click on "Update Activity"
    Then I am on the page of the activities
    And I should see the right value of total_hours
