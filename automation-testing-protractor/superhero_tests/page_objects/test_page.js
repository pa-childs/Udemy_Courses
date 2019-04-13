var TestPage = function() {}

TestPage.prototype = Object.create({}, {

	welcomeText: {get: function() { return element(by.id('login-title'))}},
	emailField: {get: function() { return element(by.id('loginEmail'))}},
	passwordField: {get: function() { return element(by.id('loginPassword'))}},
	rememberMeCheckbox: {get: function() { return element(by.id('rememberLoginCheck'))}},
	submitButton: {get: function() { return element(by.link_text('Submit'))}}

})

module.exports = TestPage