var HomePage = require('../page_objects/home_page.js')
var LoginPage = require('../page_objects/login_page.js')

describe('Home Page', function() {

	var homePage
	var loginPage

	beforeEach(function() {

		homePage = new HomePage()
		loginPage = new LoginPage()

		// Need for non-Angular testing
		browser.ignoreSynchronization = true

		// Open browser and load URL
		browser.get('file:///C:/Work_Files/Repositories/Udemy_Courses/automation-testing-protractor/superhero/index.html')

	})

	afterEach(function() {


	})

	it('should display all Home Page Roster elements', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		expect(homePage.rosterTitleText.isDisplayed()).toBe(true)
		expect(homePage.rosterTitleText.getText()).toEqual('Build Your Superhero Roster:')

		expect(homePage.heroMember1Text.isDisplayed()).toBe(true)
		expect(homePage.heroMember1Text.getText()).toEqual('Captain America')
		expect(homePage.heroMember2Text.isDisplayed()).toBe(true)
		expect(homePage.heroMember2Text.getText()).toEqual('Black Widow')
		expect(homePage.heroMember3Text.isDisplayed()).toBe(true)		
		expect(homePage.heroMember3Text.getText()).toEqual('Vision')
		expect(homePage.heroMember4Text.isDisplayed()).toBe(true)
		expect(homePage.heroMember4Text.getText()).toEqual('Thor')
		expect(homePage.heroMember5Text.isDisplayed()).toBe(true)
		expect(homePage.heroMember5Text.getText()).toEqual('Spider-Man')

		expect(homePage.addHeroLabel.isDisplayed()).toBe(true)
		expect(homePage.addHeroLabel.getText()).toEqual('Add a superhero:')
		expect(homePage.addHeroField.isDisplayed()).toBe(true)
		expect(homePage.addHeroField.getAttribute('value')).toEqual('')

		expect(homePage.addHeroSubmitButton.isDisplayed()).toBe(true)

	})

	it('should add a Hero when Submit button clicked', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		homePage.addHeroField.sendKeys('Perry the Platypus')
		homePage.addHeroSubmitButton.click()

		heroMember6Text = element(by.css('#hero-list > li:nth-child(6)'))

		expect(heroMember6Text.isDisplayed()).toBe(true)
		expect(heroMember6Text.getText()).toEqual('Perry the Platypus')

	})

})