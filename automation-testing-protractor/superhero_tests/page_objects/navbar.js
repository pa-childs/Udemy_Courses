// NavBar Object

var NavBar = function () {}

NavBar.prototype = Object.create({}, {

	// NavBar Menu
	logoutLink: {get: function() { return element(by.linkText('Logout')) } }

})

module.exports = NavBar