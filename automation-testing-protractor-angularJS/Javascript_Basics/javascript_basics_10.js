// Break, Continue, and Labels

// Breaks

for(var index = 1; index <= 10; index++){

  if (index == 5){

    // Break out of the loop
    break;

  }

  console.log(index);

}

console.log("\n");

// Continues

for(var index = 1; index <= 10; index++){

  if (index == 5){

    // Continue with next loop iteration
    continue;

  }

  console.log(index);

}

console.log("\n");

// Labels
loop1:for(var outer_index = 1; outer_index <= 3; outer_index++){

  loop2:for(var inner_index = 1; inner_index <= 3; inner_index++){

    if (inner_index == 3){

      // Stop iterating through the outer loop
      break loop1;

    }

    console.log("outer_index = " + outer_index + " inner_index = " + inner_index);

  }

}
