describe('Test entering into an text box', function() {
  it('should enter an input in the test box', function() {

    browser.driver.manage().window().maximize();
    browser.get('https://angularjs.org');

    element(by.model('yourName')).sendKeys('Paul');

    expect(element(by.binding("yourName")).getText().toEqual("Hello Paul!"))
  });
});
