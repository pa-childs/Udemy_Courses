describe('Super Hero Page', function() {

	// To do before each test case
	beforeEach(function() {

		// Only for non-Angular sites
		browser.ignoreSynchronization = true    
		
		// Load the URL to the browser
		browser.get('file:///C:/Work_Files/Repositories/Udemy_Courses/automation-testing-protractor/superhero/index.html')

	})

	// To do after each test case
	afterEach(function() {



	})


	it('should load the correct URL', function() {



		// Enter login credentials
		element(by.id('loginEmail')).sendKeys('stan_lee@marvel.com')
		element(by.id('loginPassword')).sendKeys('spiderman')

		// Verify elements
		expect(element(by.id('loginEmail')).getAttribute('value')).toEqual('stan_lee@marvel.com')  // Text in field
		expect(element(by.id('login-title')).getText()).toEqual('Welcome, Please log in.')         // Text on page (Whole String)
		expect(element(by.id('login-title')).getText()).toContain('Welcome')			           // Text on page (Substring)

		// browser.sleep(5000)
	})
})