describe('Super Hero Page', function() {
	it('should load the correct URL', function() {
		browser.ignoreSynchronization = true    //Only for non-Angular sites
		browser.get('file:///C:/Work_Files/Repositories/Udemy_Courses/automation-testing-protractor/superhero/index.html')
		browser.sleep(5000)
	})
})