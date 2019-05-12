exports.config = {
  framework: 'jasmine2',
  seleniumAddress: 'http://localhost:4444/wd/hub',
  capabilities: {
      'browserName': 'chrome'
      // 'browserName': 'firefox'
  },
  specs: [
            './tests/banking-spec.js'
            // './tests/example-spec.js'
         ]
};
