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
    Then New game is created

  Scenario: Player does not input name
    Given I am on register
    When name is ""
    And I click "submit"
    Then I should see error
