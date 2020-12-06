Feature: Creating Short Url

Scenario: Missing mandatory attributes (shorturl)

	Given there is a valid user logged in
	When they create a shorturl without shorturl
	Then an error message of "Shorturl can't be blank" will be displayed
	
Scenario: Missing mandatory attributes (targeturl)

	Given there is a valid user logged in
	When they create a shorturl without targeturl
	Then an error message of "Targeturl can't be blank" will be displayed