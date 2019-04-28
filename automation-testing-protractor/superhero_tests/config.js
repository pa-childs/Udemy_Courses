let SpecReporter = require('jasmine-spec-reporter').SpecReporter;

// Setup for protractor-jasmine2-screenshot-reporter (Capture Screenshots)
var HtmlScreenshotReporter = require('protractor-jasmine2-screenshot-reporter');
var reporter = new HtmlScreenshotReporter({

  dest: 'test_results/screenshots',
  filename: 'Report_Summary.html',
  reportOnlyFailedSpecs: false,
  captureOnlyFailedSpecs: true,
  reportTitle: "Testing Summary"

});

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

		// Setup for protractor-jasmine2-screenshot-reporter (Capture Screenshots)
  		jasmine.getEnv().addReporter(reporter);
  		
  		// Setup for jasmine-spec-reporter (Console Reporting)
	    jasmine.getEnv().addReporter(new SpecReporter({

	      spec: {

	      	displayStacktrace: true

	      },

	      summary: {

	      	displayDuration: false

	      }

	    }));

	},	

	// Setup for protractor-jasmine2-screenshot-reporter (Capture Screenshots)
	beforeLaunch: function() {
	  return new Promise(function(resolve){
	    reporter.beforeLaunch(resolve);
	  });
	},

	// Setup for protractor-jasmine2-screenshot-reporter (Capture Screenshots)
	afterLaunch: function(exitCode) {
	  return new Promise(function(resolve){
	    reporter.afterLaunch(resolve.bind(this, exitCode));
	  });
	},

	specs: [
		
		'./tests/login_spec.js',
		'./tests/navbar_spec.js',
		'./tests/home_spec.js'
	
	]

}