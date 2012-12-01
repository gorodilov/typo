Feature: Create or Edit a Category
  I want to be able to create or update categories as admin

  Background:
    Given the blog is set up
    And I am logged into the admin panel
  
  Scenario: Admin can create a category
  Given I am on the content page
  When I follow "Categories"
  Then I should see "Categories"
  When I fill in "category_name" with "Ruby"
  When I fill in "category_keywords" with "ruby, rails, ror"
  When I fill in "category_description" with "Ruby forever!"
  When I press "Save"
  Then I should see "Category was successfully saved."

  Scenario: Admin update a category
  Given I am on the content page
  When I follow "Categories"
  Then I should see "Categories"
  When I follow "Test Category"
  When I fill in "category_description" with "For testing"
  When I press "Save"
  Then I should see "Category was successfully saved."