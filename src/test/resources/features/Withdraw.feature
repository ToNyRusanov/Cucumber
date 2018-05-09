Feature: Withdraw fixed amount 


Scenario Outline: withdraw fixed amount 
	Given my bank account balance is <balance> 
	When I want to withdraw <withdraw> 
	Then I should receive <outcome> 
	And my balance should be <remaining> 
	
	Examples: 
		| balance  | withdraw  | remaining | outcome             |
		| 500      | 50        | 450       | receive 50          |
		| 500      | 100       | 400       | receive 100         |  
		| 500      | 200       | 300       | receive 200         | 
		| 100      | 500       | 100       | an error message    |		
		| 50       | 100       | 50        | an error message    |
		| 100      | 100       | 0         | receive 100         |
		
		
		
		
		
		