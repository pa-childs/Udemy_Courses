// NavBar Tests

//Page Object Files
var NavBar = require('../page_objects/navbar.js');
var LoginPage = require('../page_objects/login_page.js');

describe('NavBar Tests', function() {

	var navBar;
	var loginPage;

	beforeEach(function() {

		navBar = new NavBar();
		loginPage = new LoginPage();

		// Need for non-Angular testing
		browser.ignoreSynchronization = true;
		browser.driver.manage().window().maximize();

		// Open browser and load URL
		browser.get('file:///C:/Work_Files/Repositories/Udemy_Courses/automation-testing-protractor/superhero/index.html');

	})

	afterEach(function() {


	})

	// Confirm NavBar elements
	it('should display all Navbar elements', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com');
		loginPage.passwordField.sendKeys('spiderman');
		loginPage.submitButton.click();

		expect(navBar.homeLink.isDisplayed()).toBe(true);
		// expect(navBar.linkLink.isDisplayed()).toBe(true);
		expect(navBar.heroFactsLink.isDisplayed()).toBe(true);
		expect(navBar.logoutLink.isDisplayed()).toBe(true);

		navBar.heroFactsLink.click()
		expect(navBar.wolverineOption.isDisplayed()).toBe(true);
		expect(navBar.spidermanOption.isDisplayed()).toBe(true);

	})

	// Confirm Hero Facts Modal
	it('should display and close wolverine modal', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com');
		loginPage.passwordField.sendKeys('spiderman');
		loginPage.submitButton.click();

		navBar.heroFactsLink.click();
		navBar.wolverineOption.click();

		browser.sleep(1000);

		expect(navBar.wolverineModalTitle.isDisplayed()).toBe(true);
		expect(navBar.wolverineModalTitle.getText()).toEqual('Wolverine Fact');
		expect(navBar.wolverineModalBody.isDisplayed()).toBe(true);
		expect(navBar.wolverineModalBody.getText()).toEqual('Wolverine made his first comic book appearance in 1974.');
		expect(navBar.wolverineModalCloseButton.isDisplayed()).toBe(true);
		expect(navBar.modalXButton.isPresent()).toBeTruthy();

	})

	it('should display and close spider-man modal', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com');
		loginPage.passwordField.sendKeys('spiderman');
		loginPage.submitButton.click();

		navBar.heroFactsLink.click();
		navBar.spidermanOption.click();

		browser.sleep(1000);

		expect(navBar.spidermanModalTitle.isDisplayed()).toBe(true);
		expect(navBar.spidermanModalTitle.getText()).toEqual('Spider-Man Fact');
		expect(navBar.spidermanModalBody.isDisplayed()).toBe(true);
		expect(navBar.spidermanModalBody.getText()).toEqual('Spider-Man was created by Stan Lee and Steve Ditko and first appeared in 1962.');
		expect(navBar.spidermanModalCloseButton.isDisplayed()).toBe(true);
		expect(navBar.modalXButton.isPresent()).toBeTruthy();

	})

	// Confirm Logout Link
	it('should display Login page without email and password', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com');
		loginPage.passwordField.sendKeys('spiderman');
		loginPage.submitButton.click();

		navBar.logoutLink.click();

		expect(loginPage.passwordField.getAttribute('value')).toEqual('');
		expect(loginPage.emailField.getAttribute('value')).toEqual('');

	})

	it('should display Login page with email and password', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com');
		loginPage.passwordField.sendKeys('spiderman');
		loginPage.rememberMeCheckbox.click();
		loginPage.submitButton.click();

		navBar.logoutLink.click();

		expect(loginPage.emailField.getAttribute('value')).toEqual('stan_lee@marvel.com');
		expect(loginPage.passwordField.getAttribute('value')).toEqual('spiderman');
		expect(loginPage.rememberMeCheckbox.isSelected()).toBe(true);
		
	})

	// Search bar
	it('should display an alert for search that returns no data', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com');
		loginPage.passwordField.sendKeys('spiderman');
		loginPage.submitButton.click();

		navBar.searchField.sendKeys('Perry the Platypus');
		navBar.searchButton.click();

		var EC = protractor.ExpectedConditions;
		browser.wait(EC.alertIsPresent(), 3000);

		expect(browser.switchTo().alert().getText()).toEqual('Your search for Perry the Platypus returned 0 results.  Try something else.');
		browser.switchTo().alert().accept();
		
	})

	it('should display an alert for search that returns data', function() {

		loginPage.emailField.sendKeys('stan_lee@marvel.com');
		loginPage.passwordField.sendKeys('spiderman');
		loginPage.submitButton.click();

		navBar.searchField.sendKeys('Captain America');
		navBar.searchButton.click();

		var EC = protractor.ExpectedConditions;
		browser.wait(EC.alertIsPresent(), 3000);

		expect(browser.switchTo().alert().getText()).toEqual('Captain America is awesome!');
		browser.switchTo().alert().accept();

		
	})

})