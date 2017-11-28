Feature: move on pages
  In order to move among the pages of the app
  As a user
  I want to have link to every page

  Background:
    Given there are pages to link

  Scenario: move on the page of the customers
    Given I am on the home page
    When I click on "Customers"
    Then I should be on the page of the customers

  Scenario: return on home page
    Given I am on the page of the customers
    When I click on "Home"
    Then I am on the home page
