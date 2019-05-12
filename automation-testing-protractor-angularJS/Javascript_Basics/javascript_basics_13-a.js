// Objects and accessing members in another js file

function Calculator(){

  this.number1 = 10;
  this.number2 = 20;

  this.print = function(){

    console.log(this.number1 + this.number2);

  }

  this.add = function(first_number, second_number){

    return first_number + second_number;

  }

  this.subtract = function(first_number, second_number){

    return first_number - second_number;

  }

}

module.exports = Calculator;
