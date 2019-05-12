var Calculator = require('./javascript_basics_13-a.js');
var myCalculator = new Calculator();

console.log(myCalculator.number1);
console.log(myCalculator.number2);
myCalculator.print();

var result;

result = myCalculator.add(5, 7);
console.log(result);

result = myCalculator.subtract(9, 5);
console.log(result);
