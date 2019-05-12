// Arrays

var courses = ["Selenium", "Protractor", "Javascript", "Python"];

console.log(courses[3]);
console.log(courses.length);
console.log("\n");

var days = new Array(7);

days[0] = "Sunday";
days[1] = "Monday";
days[2] = "Tuesday";
days[3] = "Wednesday";
days[4] = "Thursday";
days[5] = "Friday";
days[6] = "Saturday";

console.log(days);
console.log("\n");

// One way to print each item in an array - Standard For loop
for(var index = 0; index<courses.length; index++) {

  console.log(courses[index]);

}

console.log("\n");

// A cleaner way to print each item in an array - For Each loop
for(var index in courses) {

  console.log(courses[index]);

}
