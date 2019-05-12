// Var, Let, and Const

// Var is a global variable
function printout_1(){

  for(var index = 1; index <= 10; index++) {

    console.log(index);

  }

  console.log('Value of index outsite the loop is: ' + index + "\n");

}

printout_1();

// Let limits the variables scope
function printout_2(){

  var index = 1;

  for(let index = 1; index <= 10; index++) {

    console.log(index);

  }

  console.log('Value of index outsite the loop is: ' + index + "\n");

}

printout_2();

// Const creates a constant.  The value of the const cannot be changed.
function printout_3(){

  const value = 100;

  console.log(value);
  // value = value++
  // console.log(value);

}

printout_3();
