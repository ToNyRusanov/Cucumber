Feature: Checkout fruits
@test
Scenario Outline: Checkout
	Given the price of a <fruit> is <price>lv
	When I checkout <count> <fruit>
	Then the total price should be <total>
		
		Examples:
		| fruit  | price | count | total|
		| banana | 2     | 1     |2     |
		| orange | 2.5   | 2     |5     | 
		| apple  | 0.70  | 3     |2.1   | 
@test	
Scenario Outline: Checkout more fruits
	Given the price of a <fruit> is <price>lv
		And the price of a <fruit1> is <price1>lv
		And I checkout <count> <fruit>
		And I checkout <count> <fruit1>
		Then the total price should be <total>
		
		Examples:
		| fruit  |fruit1| price |price1 | count | total|
		| banana | apple| 2     | 1     |2      |6     |
		| orange |banana|2.5    | 2     |5      |22.5  | 
		| apple  |orange|0.70   | 3     |3      |11.1  | 

    
		