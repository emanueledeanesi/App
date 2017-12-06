Feature: view activities
  In order to see the details of the activities
  As a user
  I want to view activities

  Background:
    Given there is an activity

  Scenario: show an activity
    Given I am on the page of the activities
    When I click "Show"
    Then I am viewing the details of the activity
