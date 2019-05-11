// Functions

// Example function
function exampleFunction(){

  console.log("simpleFunction is running...\n");

}

exampleFunction();

// Function with parameters
function addNumbers(a, b){

  var sum = a + b;
  console.log(sum + '\n');

}

addNumbers(4, 2);

// Function with return
function returnSum(a, b){

  return (a + b);

}

console.log(returnSum(10, 30) + '\n');

// Function with attributes
function carFunction(){

  this.carColor = "green";
  this.carStyle = "station wagon";

}

var myCar = new carFunction();
console.log("My car is " + myCar.carColor);
console.log("My car is a " + myCar.carStyle + "\n");

// Function assigns attributes
function petFunction(type, name){

  this.petType = type;
  this.petName = name;

}

var myPet = new petFunction("cat", "Milo");
console.log("My pet is a " + myPet.petType);
console.log("My pet is named " + myPet.petName + "\n");
