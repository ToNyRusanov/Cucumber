Feature: HRM Skill Matrix Page 

Background: 
	Given user open the browser 
	When user go to Skill Matrix page 
@test	
Scenario: Drop down Position menu options 
	And user click on the Position drop down menu 
	Then the listed "Position" options should be 
		|options  		  |
		|Developer		  |
		|QA       		  |
		|Delivery Director|
		|HR				  |
		|CTO			  | 
	And close the browser
@test	
Scenario: Drop down Location menu options
    And user click on the Location drop down menu
    Then the listed "Location" options should be
    	|options  		  |
		|London		      |
		|Sofia       	  |
	And close the browser
@test
Scenario: Drop down Status menu options
    And user click on the Status drop down menu
    Then the listed "Status" options should be	
		|options  		  |
		|Employeed	      |
	And close the browser
@test
Scenario: Drop down Proficiency level menu options	
	And user click on the Proficiency Level drop down menu
	Then the listed "Proficiency Level" options should be
		|options  		  |
		|lower  CL01	  |
		|middle  CL01 	  |
		|upper  CL01      |
		|lower CL02		  |
		|middle CL02	  | 
		|upper  CL02      |
		|lower CL03		  |
		|middle CL03	  | 
		|upper  CL03      |
		|lower CL04		  |
		|middle CL04	  | 
		|upper  CL04      |
	And close the browser	
@test
Scenario: Drop down Rank menu options
	And user click on the Rank drop down menu
	Then the listed "Rank" options should be		
		|options  		  |
		|>= 2		      |
		|>= 3        	  |
	And close the browser
	
@test
Scenario Outline:
	And user click on the Position drop down menu
	When user choose <position> from drop down menu
	And user click on the search button
	Then position of all employees in the table should be <expectedPosition>
			
	And close the browser	
	Examples:
	    |position         |expectedPosition |
		|Developer		  |Developer   	    |
		|QA       		  |QA       	    |
		|Delivery Director|Delivery Director|
		|HR				  |No records found.|
		|CTO			  |CTO			    | 	
		
		
		