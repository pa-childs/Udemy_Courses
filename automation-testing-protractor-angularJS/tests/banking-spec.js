describe('Test automation for test banking site', function() {
  it('validate customer login test', function() {

    browser.driver.manage().window().maximize();
    browser.get('http://www.way2automation.com/angularjs-protractor/banking/#/login');

    element(By.buttonText("Customer Login")).click();

    browser.sleep(2000);

    element.all(By.css("#userSelect option"))
    element(By.css('#userSelect > option:nth-child(2)')).click();
    browser.sleep(2000);

    //expect(bankUsers[0].getText().toEqual("---Your Name---"));
    // expect(bankUsers[1].getText().toEqual("Hermoine Granger"));
    // expect(bankUsers[2].getText().toEqual("Harry Potter"));
    // expect(bankUsers[3].getText().toEqual("Ron Weasly"));
    // expect(bankUsers[4].getText().toEqual("Albus Dumbledore"));
    // expect(bankUsers[5].getText().toEqual("Neville Longbottom"));

  });
});
