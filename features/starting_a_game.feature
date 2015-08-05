Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    And The user inputs "name"
    And The user clicks "submit"
    Then I should be on "new-game"

  Scenario: Player does not input name
    Given I am on register
    When name is ""
    And I click "submit"
    Then I am redirected to '/register'

  Scenario: Placing a ship
    Given I am on new-game
    Then I should see "Please place a ship"

