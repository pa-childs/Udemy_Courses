// NavBar Tests

//Page Object Files
var NavBar = require('../page_objects/navbar.js')
var LoginPage = require('../page_objects/login_page.js')

describe('NavBar', function() {

	var navBar
	var loginPage

	beforeEach(function() {

		navBar = new NavBar()
		loginPage = new LoginPage()

		// Need for non-Angular testing
		browser.ignoreSynchronization = true
		browser.driver.manage().window().maximize();

		// Open browser and load URL
		browser.get('file:///C:/Work_Files/Repositories/Udemy_Courses/automation-testing-protractor/superhero/index.html')

	})

	afterEach(function() {


	})

	// Logout menu option
	fit('should display Login page without email and password', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		navBar.logoutLink.click()

		expect(loginPage.passwordField.getAttribute('value')).toEqual('')
		expect(loginPage.emailField.getAttribute('value')).toEqual('')

	})

	it('should display Login page without email and password', function() {


		
	})

})