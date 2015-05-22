Feature: Fizz Buzz Game
  So that plays can be validated
  As a Fizz Buzz umpire
  I want to enter a play and see the correct answer

  @fizzbuzz
  Scenario Outline: Get answers based on played numbers
    Given I am officiating a FizzBuzz game
    When the number <playedNumber> is played
    Then I should be told the correct answer is "<expectedResult>"
    Examples:
      | playedNumber | expectedResult |
      | 1            | 1              |