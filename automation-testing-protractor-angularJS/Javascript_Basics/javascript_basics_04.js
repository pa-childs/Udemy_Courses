// Equality Operators

console.log("Assignment Operator\n");
var num1 = 10;
var num2 = 20;
var string1 = "Paul";
var string2 = "Javascript";
var object1 = new String("Paul");
var object2 = new String("Paul");

console.log("Compares the Value");
console.log("num1 == 10: " + (num1 == 10));
console.log("num1 == num2: " + (num1 == num2));
console.log("string1 == Paul: " + (string1 == "Paul"));
console.log("string1 == string2: " + (string1 == string2));
console.log();

console.log("Compares the Equality in both types");
console.log("string1 === Paul: " + (string1 === "Paul"));
console.log("string1 === object1: " + (string1 === object1));
console.log("object1 === object2: " + (object1 === object2));
