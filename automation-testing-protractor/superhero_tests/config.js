let SpecReporter = require('jasmine-spec-reporter').SpecReporter;

exports.config = {
	
	framework: 'jasmine2',

	seleniumAddress: 'http://localhost:4444/wd/hub',

	capabilities: {

		browserName: 'chrome'

	},

	jasmineNodeOpts: {

		showColors: true,
	    silent: true,
	    defaultTimeoutInterval: 360000,
	    print: function () {

	    }

	},

	logLevel: 'WARN',
  	onPrepare: function () {

	    jasmine.getEnv().addReporter(new SpecReporter({

	      spec: {

	      	displayStacktrace: true

	      },

	      summary: {

	      	displayDuration: false

	      }

	    }));

	},	

	specs: [
		
		'./tests/login_spec.js',
		'./tests/navbar_spec.js',
		'./tests/home_spec.js'
	
	]

}