Feature: board game

Scenario: tic-tac
   Given a board like this:
          
   |  | 1 | 2 | 3 |
   |1 |   |   |   |
   |2 |   |   |   |
   |3 |   |   |   |
   
    When player x plays in row 3, column 1
    Then the board should look like this:
    
   |  | 1 | 2 | 3 |
   |1 |   |   |   |
   |2 |   |   |   |
   |3 | x |   |   |
   