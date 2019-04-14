// Home Page Object

var HomePage = function () {}

HomePage.prototype = Object.create({}, {

	// Roster Section
	rosterTitleText: {get: function() { return element(by.css('body > div.container-fluid > div:nth-child(4) > h3')) } },
	heroMember1Text: {get: function() { return element(by.css('#hero-list > li:nth-child(1)')) } },
	heroMember2Text: {get: function() { return element(by.css('#hero-list > li:nth-child(2)')) } },
	heroMember3Text: {get: function() { return element(by.css('#hero-list > li:nth-child(3)')) } },
	heroMember4Text: {get: function() { return element(by.css('#hero-list > li:nth-child(4)')) } },
	heroMember5Text: {get: function() { return element(by.css('#hero-list > li:nth-child(5)')) } },
	addHeroLabel: {get: function() { return element(by.css('#addHero-form > div > label')) } },
	addHeroField: {get: function() { return element(by.id('heroInput')) } },
	addHeroSubmitButton: {get: function() { return element(by.css('#addHero-form > button')) } }


})

module.exports = HomePage
