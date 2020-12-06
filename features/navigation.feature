 Feature: Navigation using a shorturl

Scenario: Navigate using a valid shorturl

	Given there is a known shorturl
	When a browser visits the url
	Then a redirect to the targeturl is received
	
Scenario: Navigate using an invalid shorturl

	When a browser visits an invalid shorturl
	Then a page is displayed indicating the shorturl is invalid
	
Scenario: Navigate using a valid shorturl results in the usage count incrementing

	Given there are several known shorturls owned by a user
	When a browser visits the 2 of the shorturls
	And views their list of shorturls
	Then the usage count for the visited shorturl 2 will have incremented by one
	