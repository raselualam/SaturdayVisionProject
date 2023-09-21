@regression @smoke @us-246
Feature: Ebay Brand Outline

Description: User should able to filter items by Brand

	Background: 
		Given Open Ebay Homepage
	
	Scenario Outline: Filter items by Brand
		Given Search for "<Items>"
		When Filter by "<Brand>"
		Then Item list should have products of "<Brand>"
	
	Examples:
		|Items		|Brand		|
		|Shoes		|Nike		|
		|Shirts		|Adidas		|
		|Pants		|Unbranded	|
		
		
	Scenario Outline: Filter items by Color 
		Given Search for "<Items>"
		When Specific color of "<Color>"
		Then Item list should have "<Color>"
	
	Examples:
		|Items		|Color			|
		|Shoes		|Black			|
		|Shirts		|White			|
		|Pants		|Blue 			|
		
Feature: Gmail Login

  Scenario Outline : Successful Gmail Login
    Given the user is on the Gmail login page
    When the user enters valid "<Username>" and "<Password>"
    And clicks the login button
    Then the user should be logged into their Gmail account
    And the inbox page should be displayed

    	Examples:
		|Username	|Password		|
		|abcd		|1234			|