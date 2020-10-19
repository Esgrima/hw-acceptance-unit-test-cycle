Feature: Create a movie
 
  As a user
  So that I can find movies not initially in the database
  I want to able to add movies

Background: movies have been added to database

  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

  And  I am on the RottenPotatoes home page

Scenario: 

  When I follow "Add new movie"
  Then I should be on the new movie page
  And I fill in "Title" with "The Avengers: Infinity War"
  And I select "PG-13" from "Rating"
  And I fill in "Director" with "Russo Brothers"
  And I press "Save Changes"
  Then I should be on the home page
  And I should see "The Avengers: Infinity War was successfully created"

