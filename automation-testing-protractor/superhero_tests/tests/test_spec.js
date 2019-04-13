var TestPage = require('../page_objects/test_page')

describe('Super Hero Page', function() {

	var testPage

	// To do before each test case
	beforeEach(function() {

		testPage = new TestPage()

		// Only for non-Angular sites
		browser.ignoreSynchronization = true    
		
		// Load the URL to the browser
		browser.get('file:///C:/Work_Files/Repositories/Udemy_Courses/automation-testing-protractor/superhero/index.html')

	})

	// To do after each test case
	afterEach(function() {

	})

	// First Test
	it('should load the correct URL', function() {

		// Enter login credentials
		testPage.emailField.sendKeys('stan_lee@marvel.com')
		testPage.passwordField.sendKeys('spiderman')

		// Verify elements
		expect(testPage.emailField.getAttribute('value')).toEqual('stan_lee@marvel.com')  // Text in field
		expect(testPage.welcomeText.getText()).toEqual('Welcome, Please log in.')         // Text on page (Whole String)
		expect(testPage.welcomeText.getText()).toContain('Welcome')			           // Text on page (Substring)

		// browser.sleep(5000)
	})
})