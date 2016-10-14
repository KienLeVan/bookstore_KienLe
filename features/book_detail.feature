#features/book_detail.feature
Feature: Book Details

  Scenario: Viewing a book information
    Given there's a book title "Ruby on Rails Tutorial"
    When I am on the book detail page of "Ruby on Rails Tutorial"
    Then I should see the "Ruby on Rails Tutorial" title
    And I should see author name "Michael Hartl"
    And I should see publisher is "Addison-Wesley Professional"
    And I should see publish date is "August 6, 2012"
    And I should see unit price is "$17.75"
    And I should see the image with alt "Ruby on rails tutorials"
    And I should see total rating 2
    And I should see average rating 4.5
    And I should see button "Add to Cart"