Feature: edit activities
  In order to correct the details of the activities
  As a user
  I want to edit activities

  Background:
    Given there is an activity

  Scenario: change the description of an activity
		Given there is an activity
		And I am on the page of the activities
		When I click "Edit"
		And I change the description to "stringa di prova"
		And I click on "Update Activity"
		Then I am on the page of the activities
		And the description of the activity is "stringa di prova"

  Scenario: can't leave the description blank
		Given there is an activity
		And I am on the page of the activities
		When I click "Edit"
		And I change the description to ""
		And I click on "Update Activity"
    Then I expect to get an error message
