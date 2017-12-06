Feature: delete activities
  In order to administer the activities
  As a user
  I want to delete activities

  Background:
    Given there is an activity

  Scenario: delete an activity
    Given I am on the page of the activities
    When I click "Destroy"
    Then I am on the page of the activities
    And I should not see that activity
