// Home Page Object

var HomePage = function () {}

HomePage.prototype = Object.create({}, {

	// Header Section
	headerTitleText: {get: function() { return element(by.css('body > div.container-fluid > div:nth-child(1) > h1')) } },
	headerImage: {get: function() { return element(by.css('body > div.container-fluid > div:nth-child(2) > img')) } },
	headerText: {get: function() { return element(by.css('body > div.container-fluid > div:nth-child(3) > div > p')) } },

	// Roster Section
	rosterTitleText: {get: function() { return element(by.css('body > div.container-fluid > div:nth-child(4) > h3')) } },
	heroMember1Text: {get: function() { return element(by.css('#hero-list > li:nth-child(1)')) } },
	heroMember2Text: {get: function() { return element(by.css('#hero-list > li:nth-child(2)')) } },
	heroMember3Text: {get: function() { return element(by.css('#hero-list > li:nth-child(3)')) } },
	heroMember4Text: {get: function() { return element(by.css('#hero-list > li:nth-child(4)')) } },
	heroMember5Text: {get: function() { return element(by.css('#hero-list > li:nth-child(5)')) } },
	addHeroLabel: {get: function() { return element(by.css('#addHero-form > div > label')) } },
	addHeroField: {get: function() { return element(by.id('heroInput')) } },
	addHeroSubmitButton: {get: function() { return element(by.css('#addHero-form > button')) } },

	// Vote Section
	voteTitleText: {get: function() { return element(by.css('body > div.container-fluid > div:nth-child(6) > div > h4')) } },
	voteFormSection: {get: function() { return element(by.id('vote-form')) } },
	movie1Label: {get: function() { return element(by.css('#vote-form > div:nth-child(1) > label')) } },
	movie1RadioButton: {get: function() { return element(by.id('heroMovieRadios1')) } },
	movie2Label: {get: function() { return element(by.css('#vote-form > div:nth-child(2) > label')) } },
	movie2RadioButton: {get: function() { return element(by.id('heroMovieRadios2')) } },
	movie3Label: {get: function() { return element(by.css('#vote-form > div:nth-child(3) > label')) } },
	movie3RadioButton: {get: function() { return element(by.id('heroMovieRadios3')) } },
	movie4Label: {get: function() { return element(by.css('#vote-form > div:nth-child(4) > label')) } },
	movie4RadioButton: {get: function() { return element(by.id('heroMovieRadios4')) } },
	movie5Label: {get: function() { return element(by.css('#vote-form > div:nth-child(5) > label')) } },
	movie5RadioButton: {get: function() { return element(by.id('heroMovieRadios5')) } },
	movieVoteSubmitButton: {get: function() { return element(by.css('#vote-form > button')) } },
	movieThanksMessage: {get: function() { return element(by.id('vote-alert')) } },
	movieColumnText: {get: function() { return element(by.css('body > div.container-fluid > div:nth-child(6) > div > table > thead > tr > th:nth-child(1)')) } },
	voteColumnText: {get: function() { return element(by.css('body > div.container-fluid > div:nth-child(6) > div > table > thead > tr > th:nth-child(2)')) } },
	movie1RowText: {get: function() { return element(by.id('movieName1')) } },
	vote1RowText: {get: function() { return element(by.id('movieVotes1')) } },
	movie2RowText: {get: function() { return element(by.id('movieName2')) } },
	vote2RowText: {get: function() { return element(by.id('movieVotes2')) } },
	movie3RowText: {get: function() { return element(by.id('movieName3')) } },
	vote3RowText: {get: function() { return element(by.id('movieVotes3')) } },
	movie4RowText: {get: function() { return element(by.id('movieName4')) } },
	vote4RowText: {get: function() { return element(by.id('movieVotes4')) } },
	movie5RowText: {get: function() { return element(by.id('movieName5')) } },
	vote5RowText: {get: function() { return element(by.id('movieVotes5')) } }

})

module.exports = HomePage
