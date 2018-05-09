Feature: Sorting Current Employee Table

@web
Scenario:
 When user go to Current employees page
 And user click on Full name order arrow button
 Then order of the Employees table should be in "ASC"
 
@web
Scenario:
 When user go to Current employees page
 And user click on Full name order arrow button
 And user click on Full name order arrow button
 Then order of the Employees table should be in "DESC" 