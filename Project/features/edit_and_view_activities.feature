Feature: edit and view activities
  In order to see and correct the details of the activities
  As a user
  I want to edit and view activities

  Background:
    Given there is an activity associated to "Andrea Rossi"

  Scenario: change the description of an activity
		Given there is an activity
		And I am viewing the details of the activity
		When I click on "Edit"
		And I change the description to "stringa di prova"
		And I click on "Update Activity"
		Then I am on the page of the activities
		And the description of the activity is "stringa di prova"

  Scenario: can't leave the description blank
		Given there is an activity
		And I am viewing the details of the activity
		When I click on "Edit"
		And I change the description to ""
		And I click on "Update Activity"
		Then I should see an error

  Scenario: edit an activity with an invalid end_date
    Given there is an activity
    And I am viewing the details of the activity
    When I click on "Edit"
    And I change the end_date to "1850-01-01"
    And I click on "Update Activity"
    Then I should see an error

  Scenario: show an activity
    Given I am on the page of the activities
    When I click on "Show"
    Then I should see the details of the activity

  Scenario: delete an activity
    Given I am on the page of the activities
    When I click on "Destroy"
    Then I am on the page of the activities
    And I should not see that activity
