Feature: Creating article
	In order to display the latest news of the LBG
	As an administrator
	I want to create articles
	
	Scenario: Creating an article
		Given I am on the homepage
		When I follow "New Article"
		And I fill in "Title" with "Random article"
		And I fill in "Body" with "Random body"
		And I press "Create Article"
		Then I should see "The article has been created."