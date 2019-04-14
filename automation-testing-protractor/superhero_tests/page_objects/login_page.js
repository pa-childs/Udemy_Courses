// Login Page Object

var LoginPage = function() {}

LoginPage.prototype = Object.create({}, {

	welcomeText: {get: function() { return element(by.id('login-title')) } },
	emailLabel: {get: function() { return element(by.css('#form-login > div:nth-child(1) > label')) } },
	emailField: {get: function() { return element(by.id('loginEmail')) } },
	passwordLabel: {get: function() { return element(by.css('#form-login > div:nth-child(2) > label')) } },
	passwordField: {get: function() { return element(by.id('loginPassword')) } },
	rememberMeLabel: {get: function() { return element(by.css('#form-login > div.form-check > label')) } },
	rememberMeCheckbox: {get: function() { return element(by.id('rememberLoginCheck')) } },
	submitButton: {get: function() { return element(by.css('#form-login > button')) } },
	loginErrorAlert: {get: function() { return element(by.id('login-alert')) } }

})

module.exports = LoginPage