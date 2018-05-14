Feature: Checkout fruits
@test
Scenario: Checkout banana
 Given the price of a banana is 2 lv
 When I checkout 2 banana
 Then the total price should be 4
@test 
Scenario: Checkout apple 
Given the price of a apple is 1.50 lv
When I checkout 3 apple
Then the total price should be 4.50
@test
Scenario: Checkout orange
Given the price of a orange is 2.50 lv
When I checkout 3 orange
Then the total price should be 7.50



