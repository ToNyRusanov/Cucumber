Feature: HRM add a Company 

Background: 
	Given user open the browser 
	When user is on the Company page 

Scenario: add a Company 
	And click on create button 
	When user enter a valid data 
		|fields      | value       |
		|Company name| Ozone       |
		|Web address | www.ozone.bg|
	And click on save button 
	Then new company "Ozone" should be saved and listed 
	And close the browser 
	
	
 
Scenario: edit a Company 
	And user click on edit button of "Ozone" company 
	When user enter a valid data to change the company 		
		|Company name| The zone      |
		|Web address | www.thezone.bg|
	And click on save button 
	Then new company "The zone" should be saved and listed 
	And close the browser 
	
	