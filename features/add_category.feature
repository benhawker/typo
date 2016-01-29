Feature: Add Category
  As a blog administrator
  In order to allow articles to be categorized
  I want to add custom categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Sucessfully Add New Category from admin panel
    Given I am on the admin home page

    When I follow "Categories"
    Then I should be on the admin categories page

    When I fill in "category[name]" with "Bob"
    And I press "Save"
    Then I should be on the admin categories page
    And I should see "Bob"

  Scenario: Edit existing category
    Given  Pending