Feature: method total hours
  In order to sum all the hours of work of the activities associated to a customer
  As a user
  I want to see the amount of the total hours worked for every customer

  Background:
    Given there is an activity

  Scenario: amount hours worked
    Then I should see the right value of total_hours
