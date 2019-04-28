// Login Page Tests

//Page Object Files
var HomePage = require('../page_objects/home_page.js')
var LoginPage = require('../page_objects/login_page.js')

describe('Login Page Tests', function() {

	var homePage
	var loginPage

	beforeEach(function() {

		homePage = new HomePage()
		loginPage = new LoginPage()

		// Need for non-Angular testing
		browser.ignoreSynchronization = true
		browser.driver.manage().window().maximize();

		// Open browser and load URL
		browser.get('file:///C:/Work_Files/Repositories/Udemy_Courses/automation-testing-protractor/superhero/index.html')

	})

	afterEach(function() {

		
		
	})

	it('should display all Login page elements', function() {

		// Confirm Welcome Text
		expect(loginPage.welcomeText.isDisplayed()).toBe(true)
		expect(loginPage.welcomeText.getText()).toEqual('Welcome, Please log in.')
		
		// Confirm Credential Fields
		expect(loginPage.emailLabel.isDisplayed()).toBe(true)
		expect(loginPage.emailField.isDisplayed()).toBe(true)
		expect(loginPage.emailField.getAttribute('value')).toEqual('')
		expect(loginPage.passwordLabel.isDisplayed()).toBe(true)
		expect(loginPage.passwordField.isDisplayed()).toBe(true)
		expect(loginPage.passwordField.getAttribute('value')).toEqual('')
		
		// Confirm Remember Me Checkbox
		expect(loginPage.rememberMeLabel.isDisplayed()).toBe(true)
		expect(loginPage.rememberMeCheckbox.isDisplayed()).toBe(true)
		expect(loginPage.rememberMeCheckbox.isSelected()).toBe(false)

		// Confirm Submit Button
		expect(loginPage.submitButton.isDisplayed()).toBe(true)

	})


	it('should display error messsage when no credentials are entered', function() {

		loginPage.submitButton.click()

		// Confirm Login error message is displayed
		expect(loginPage.loginErrorAlert.isDisplayed()).toBe(true)
		expect(loginPage.loginErrorAlert.getText()).toEqual('Both an email and password are required.')

	})

	it('should display error messsage when no email credential is entered', function() {

		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		// Confirm Login error message is displayed
		expect(loginPage.loginErrorAlert.isDisplayed()).toBe(true)
		expect(loginPage.loginErrorAlert.getText()).toEqual('Both an email and password are required.')

	})

	it('should display error messsage when no password credential is entered', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.submitButton.click()

		// Confirm Login error message is displayed
		expect(loginPage.loginErrorAlert.isDisplayed()).toBe(true)
		expect(loginPage.loginErrorAlert.getText()).toEqual('Both an email and password are required.')

	})

	it('should allow user to log in when both credentials provided', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		// Confirm Login page overlay is cleared
		expect(homePage.rosterTitleText.isDisplayed()).toBe(true)

	})
})