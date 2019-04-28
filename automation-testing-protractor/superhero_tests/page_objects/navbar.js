// NavBar Object

var NavBar = function () {};

NavBar.prototype = Object.create({}, {

	// NavBar Menu
	homeLink: {get: function() { return element(by.css('#navbarSupportedContent > ul > li.nav-item.active > a')) } },
	// linkLink: {get: function() { return element(by.linkText('Link')) } },
	heroFactsLink: {get: function() { return element(by.linkText('Hero Facts')) } },
	wolverineOption: {get: function() { return element(by.linkText('Wolverine')) } },
	spidermanOption: {get: function() { return element(by.linkText('Spider-Man')) } },
	logoutLink: {get: function() { return element(by.linkText('Logout')) } },

	// Modal Elements
	wolverineModalTitle: {get: function() { return element(by.id('wolverineModalLabel')) } },
	wolverineModalBody: {get: function() { return element(by.css('#wolverineModal > div > div > div.modal-body')) } },
	wolverineModalCloseButton: {get: function() { return element(by.css('#wolverineModal > div > div > div.modal-footer > button')) } },
	spidermanModalTitle: {get: function() { return element(by.id('spidermanModalLabel')) } },
	spidermanModalBody: {get: function() { return element(by.css('#spidermanModal > div > div > div.modal-body')) } },
	spidermanModalCloseButton: {get: function() { return element(by.css('#spidermanModal > div > div > div.modal-footer > button')) } },

	modalXButton: {get: function() { return element(by.css('#spidermanModal > div > div > div.modal-header > button > span')) } },

	//Search Bar
	searchField: {get: function() { return element(by.id('search-box')) } },
	searchButton: {get: function() { return element(by.buttonText('Search')) } }

})

module.exports = NavBar;