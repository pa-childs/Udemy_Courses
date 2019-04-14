// Home Page Tests

//Page Object Files
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

	// Header Section
	fit('should display all Home Page Header elements', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		// Confirm Header Section
		expect(homePage.headerTitleText.isDisplayed()).toBe(true)
		expect(homePage.headerTitleText.getText()).toEqual('Superhero Roster')
		expect(homePage.headerImage.isDisplayed()).toBe(true)
		expect(homePage.headerText.isDisplayed()).toBe(true)
		expect(homePage.headerText.getText()).toEqual('Imagine that your are tasked with building a team of Superheros to save the world. We have given you a few heroes to start with. Add as many heros as you would like to round out your dream team.')

	})


	// Roster Section
	it('should display all Home Page Roster elements', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		// Confirm Section Title
		expect(homePage.rosterTitleText.isDisplayed()).toBe(true)
		expect(homePage.rosterTitleText.getText()).toEqual('Build Your Superhero Roster:')

		// Confirm Default Roster Heroes
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

		// Confirm Add Hero Field
		expect(homePage.addHeroLabel.isDisplayed()).toBe(true)
		expect(homePage.addHeroLabel.getText()).toEqual('Add a superhero:')
		expect(homePage.addHeroField.isDisplayed()).toBe(true)
		expect(homePage.addHeroField.getAttribute('value')).toEqual('')

		// Confirm Submit Button
		expect(homePage.addHeroSubmitButton.isDisplayed()).toBe(true)

	})

	it('should add a Hero when Submit button clicked', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		homePage.addHeroField.sendKeys('Perry the Platypus')
		homePage.addHeroSubmitButton.click()

		heroMember6Text = element(by.css('#hero-list > li:nth-child(6)'))

		// Confirm New Hero Added
		expect(heroMember6Text.isDisplayed()).toBe(true)
		expect(heroMember6Text.getText()).toEqual('Perry the Platypus')

	})

	// Voting Section
	it('should display all Home Page Voting elements', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		// Confirm Section Title
		expect(homePage.voteTitleText.isDisplayed()).toBe(true)
		expect(homePage.voteTitleText.getText()).toEqual('Vote for your favorite Superhero movie:')

		// Confirm Radio Buttons
		expect(homePage.movie1RadioButton.isDisplayed()).toBe(true)
		expect(homePage.movie1RadioButton.isSelected()).toBe(false)
		expect(homePage.movie1Label.getText()).toEqual('Captain Americe: The First Avenger')
		expect(homePage.movie2RadioButton.isDisplayed()).toBe(true)
		expect(homePage.movie2RadioButton.isSelected()).toBe(false)
		expect(homePage.movie2Label.getText()).toEqual('The Avengers')
		expect(homePage.movie3RadioButton.isDisplayed()).toBe(true)
		expect(homePage.movie3RadioButton.isSelected()).toBe(false)		
		expect(homePage.movie3Label.getText()).toEqual('Guardians of the Galaxy')
		expect(homePage.movie4RadioButton.isDisplayed()).toBe(true)
		expect(homePage.movie4RadioButton.isSelected()).toBe(false)
		expect(homePage.movie4Label.getText()).toEqual('Spider-Man: Homecoming')
		expect(homePage.movie5RadioButton.isDisplayed()).toBe(true)
		expect(homePage.movie5RadioButton.isSelected()).toBe(false)
		expect(homePage.movie5Label.getText()).toEqual('Thor')

		// Confirm Submit Button
		expect(homePage.movieVoteSubmitButton.isDisplayed()).toBe(true)

		// Confirm Column Headers
		expect(homePage.movieColumnText.isDisplayed()).toBe(true)
		expect(homePage.movieColumnText.getText()).toEqual('Movie')
		expect(homePage.voteColumnText.isDisplayed()).toBe(true)
		expect(homePage.voteColumnText.getText()).toEqual('Votes')

		// Confirm Movie Titles
		expect(homePage.movie1RowText.isDisplayed()).toBe(true)
		expect(homePage.movie1RowText.getText()).toEqual('Captain Americe: The First Avenger')
		expect(homePage.movie2RowText.isDisplayed()).toBe(true)
		expect(homePage.movie2RowText.getText()).toEqual('The Avengers')
		expect(homePage.movie3RowText.isDisplayed()).toBe(true)
		expect(homePage.movie3RowText.getText()).toEqual('Guardians of the Galaxy')
		expect(homePage.movie4RowText.isDisplayed()).toBe(true)
		expect(homePage.movie4RowText.getText()).toEqual('Spider-Man: Homecoming')
		expect(homePage.movie5RowText.isDisplayed()).toBe(true)
		expect(homePage.movie5RowText.getText()).toEqual('Thor')

		// Confirm Movie Votest
		expect(homePage.vote1RowText.isDisplayed()).toBe(true)
		expect(homePage.vote1RowText.getText()).toEqual('11')
		expect(homePage.vote2RowText.isDisplayed()).toBe(true)
		expect(homePage.vote2RowText.getText()).toEqual('10')
		expect(homePage.vote3RowText.isDisplayed()).toBe(true)
		expect(homePage.vote3RowText.getText()).toEqual('8')
		expect(homePage.vote4RowText.isDisplayed()).toBe(true)
		expect(homePage.vote4RowText.getText()).toEqual('7')
		expect(homePage.vote5RowText.isDisplayed()).toBe(true)
		expect(homePage.vote5RowText.getText()).toEqual('7')

	})

	it('should update vote totals when vote cast for 1st movie', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		homePage.movie1RadioButton.click()
		homePage.movieVoteSubmitButton.click()

		// Confirm Thank You message replaces radio buttons
		expect(homePage.movieThanksMessage.isDisplayed()).toBe(true)
		expect(homePage.movieThanksMessage.getText()).toEqual('Thanks for voting')
		expect(homePage.voteFormSection.isDisplayed()).toBe(false)

		// Confirm Votes were tallied as expected
		expect(homePage.vote1RowText.getText()).toEqual('12')
		expect(homePage.vote2RowText.getText()).toEqual('10')
		expect(homePage.vote3RowText.getText()).toEqual('8')
		expect(homePage.vote4RowText.getText()).toEqual('7')
		expect(homePage.vote5RowText.getText()).toEqual('7')

	})	

	it('should update vote totals when vote cast for 2nd movie', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		homePage.movie2RadioButton.click()
		homePage.movieVoteSubmitButton.click()

		// Confirm Thank You message replaces radio buttons
		expect(homePage.movieThanksMessage.isDisplayed()).toBe(true)
		expect(homePage.movieThanksMessage.getText()).toEqual('Thanks for voting')
		expect(homePage.voteFormSection.isDisplayed()).toBe(false)

		// Confirm Votes were tallied as expected
		expect(homePage.vote1RowText.getText()).toEqual('11')
		expect(homePage.vote2RowText.getText()).toEqual('11')
		expect(homePage.vote3RowText.getText()).toEqual('8')
		expect(homePage.vote4RowText.getText()).toEqual('7')
		expect(homePage.vote5RowText.getText()).toEqual('7')

	})	

	it('should update vote totals when vote cast for 3rd movie', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		homePage.movie3RadioButton.click()
		homePage.movieVoteSubmitButton.click()

		// Confirm Thank You message replaces radio buttons
		expect(homePage.movieThanksMessage.isDisplayed()).toBe(true)
		expect(homePage.movieThanksMessage.getText()).toEqual('Thanks for voting')
		expect(homePage.movie3RadioButton.isSelected()).toBe(true)
		expect(homePage.voteFormSection.isDisplayed()).toBe(false)

		// Confirm Votes were tallied as expected
		expect(homePage.vote1RowText.getText()).toEqual('11')
		expect(homePage.vote2RowText.getText()).toEqual('10')
		expect(homePage.vote3RowText.getText()).toEqual('9')
		expect(homePage.vote4RowText.getText()).toEqual('7')
		expect(homePage.vote5RowText.getText()).toEqual('7')

	})	

	it('should update vote totals when vote cast for 4th movie', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		homePage.movie4RadioButton.click()
		homePage.movieVoteSubmitButton.click()

		// Confirm Thank You message replaces radio buttons
		expect(homePage.movieThanksMessage.isDisplayed()).toBe(true)
		expect(homePage.movieThanksMessage.getText()).toEqual('Thanks for voting')
		expect(homePage.movie4RadioButton.isSelected()).toBe(true)
		expect(homePage.voteFormSection.isDisplayed()).toBe(false)

		// Confirm Votes were tallied as expected
		expect(homePage.vote1RowText.getText()).toEqual('11')
		expect(homePage.vote2RowText.getText()).toEqual('10')
		expect(homePage.vote3RowText.getText()).toEqual('8')
		expect(homePage.vote4RowText.getText()).toEqual('8')
		expect(homePage.vote5RowText.getText()).toEqual('7')

	})	

	it('should update vote totals when vote cast for 5th movie', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com')
		loginPage.passwordField.sendKeys('spiderman')
		loginPage.submitButton.click()

		homePage.movie5RadioButton.click()
		homePage.movieVoteSubmitButton.click()

		// Confirm Thank You message replaces radio buttons
		expect(homePage.movieThanksMessage.isDisplayed()).toBe(true)
		expect(homePage.movieThanksMessage.getText()).toEqual('Thanks for voting')
		expect(homePage.voteFormSection.isDisplayed()).toBe(false)

		// Confirm Votes were tallied as expected
		expect(homePage.vote1RowText.getText()).toEqual('11')
		expect(homePage.vote2RowText.getText()).toEqual('10')
		expect(homePage.vote3RowText.getText()).toEqual('8')
		expect(homePage.vote4RowText.getText()).toEqual('7')
		expect(homePage.vote5RowText.getText()).toEqual('8')

	})

})