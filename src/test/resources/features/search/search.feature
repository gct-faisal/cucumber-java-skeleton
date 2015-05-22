@search
Feature: Searching by keyword

  In order to find items that I would like to purchase
  As a potential buyer
  I want to be able to search for items containing certain words

  Scenario Outline: Should list items related to a specified keyword
    Given I want to buy <article>
    When I search for items containing '<keyword>'
    Then I should only see items related to '<keyword>'
    Examples:
      | article      | keyword |
      | a wool scarf | wool    |