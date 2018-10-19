// console.log('sayHello returned', sayHello('Euan'));

// function sayHello(name = 'World'){
//     return `${greeting} ${name}`;
// }

// var add = function(firstnumber, secondNumber){
//     return firstnumber + secondNumber;
// }

// console.log('1 + 3 with add:', add(1,3));

//Declare a named function that takes an array of numbers, and returns the sum, or total, of all of 
//the numbers in the array.

// var myArray = [1,2,3,4];
// function returnSum (givenArray){
//     var total = 0;
//     for (number of givenArray){
//         total += number
//     }
//     return total;
// }
// console.log('total', returnSum(myArray));

// //Define an anonymous function expression that takes two arguments:
// //- an object, for example, { name: ‘Wojtek’, age: 30 }
// //-a string, for example, ‘name’

// //Your function should return true if the given string is a key on the given object and false if the 
// //object does not have a key that matches the string. Store this function in an appropriately named 
// //variable to invoke it.


// var isKeyInObject = function(keyToCheck, object){
//     for (var key in object){
//         if (key === keyToCheck){
//             return true;
//         }
//     }
//     return false;
// }

// var person = {
//     name: "Euan",
//     age: 28
// }

// console.log('key IS in object return value: ', isKeyInObject('age', person));

var multiply = (firstNumber, secondNumber) => {
    return firstNumber * secondNumber;
}
console.log('mutiply 2 by 5:', multiply(2, 5));