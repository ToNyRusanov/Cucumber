Feature: Checkout

Scenario: Checkout banana
 Given the price of a banana is 2 lv
 When I checkout 2 banana
 Then the total price should be 4
 
 