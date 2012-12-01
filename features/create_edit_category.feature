Feature: Create or Edit a Category
  I want to have an ablility to add or edit category types as admin

  Background:
    Given the blog is set up
    And I am logged into the admin panel
  
  Scenario: Admin can create a category
  Given I am on the content page
  When I follow "Categories"
  Then I should see "Categories"
  When I fill in "category_name" with "Russia"
  When I fill in "category_keywords" with "russia, moscow, oil"
  When I fill in "category_description" with "Russia description!"
  When I press "Save"
  Then I should see "Category was successfully saved."

  Scenario: Admin update a category
  Given I am on the content page
  When I follow "Categories"
  Then I should see "Categories"
  When I follow "New Category"
  When I fill in "category_description" with "New category"
  When I press "Save"
  Then I should see "Category was successfully saved."