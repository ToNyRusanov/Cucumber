Feature: search section in Current Employees page 

Background: 
	Given user open the browser 
	And user go to Current employees page 
	
@test	
Scenario: Search for employee by name 
	And type "Anton Rusanov" in the Full name search field 
	And result in the Employees table for Full Name should be "Anton Rusanov" 
	Then close the browser 
@test	
Scenario: Search for employee by position 
	And type "Developer" in the Position search field 
	And result in the Employees table for Position should be "Developer" 
	Then close the browser 
@test	
Scenario: 
	And type "Sofia" in the Location search field 
	And result in the Employees table for Location should be "Sofia" 
	Then close the browser 
@test	
Scenario: 
	And type "lower CL01" in the Prof Level search field 
	And result in the Employees table for Prof Level should be "lower CL01" 
	Then close the browser 
@test	
Scenario: 
	And type "Permanent" in the Contract Type search field 
	And result in the Employees table for Contract Type should be "Permanent"
	Then close the browser
@test	
Scenario:
	And type "Employeed" in the Status search field
	And result in the Employees table for Status should be "Employeed"
	Then close the browser	
	
	