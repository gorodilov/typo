Feature: Merge Articles
  As admin
  In order to remove articles on a duplicate topic
  I want to be able to merge articles on the same topic
  
  Background: 
    Given the blog is set up

  Given the following articles exist:
  | author | body                   | id  | type    | permalink| published | title     |
  | alex   | Content bla-bla-bla 1  | 3   | Article | link_1   | true      | Article 1 |
  | sveta  | Content bla-bla-bla 2  | 4   | Article | link_2   | true      | Article 2 |

  Scenario: A non-admin cannot merge two articles
    Given I am logged as 'alex' with password 'aaaaaaaa'
    When I am on the edit article 3 page
    Then I should not see "Merge Articles"
    And I should see "Article 1"
    
  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am logged into the admin panel
    Then I should see "Article 1"
    And  I should see "Article 2"
    When I am on the edit article 3 page
    When I fill in "merge_with" with "4"
    And I press "Merge"
    Then I should see "This article was merged successfully"
    And I should see "Article 2"
    And I should not see "Article 1"
    When I am on the edit article 4 page 
    Then I should see "Content bla-bla-bla 1"
    And I should see "Content bla-bla-bla 2"

    