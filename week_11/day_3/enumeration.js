const numbers = [1,2,3,4,5];

// for (const number of numbers){
//     console.log(`This is number ${number}`)
// }


// numbers.forEach((number) => {
//     console.log(`This is number ${number}`)
// })

// const multiplyByTwo = function(){
//     const result = [];
//     numbers.forEach((number) =>{
//         const doubled = number * 2;
//         result.push(doubled);
//     })


//     return result;
// }

// console.log(multiplyByTwo())

// Write a function called getEvens that returns a new array that only contains the even numbers 
//from the original array.

const getEvens = function(){
    const result = [];
    numbers.forEach((number) =>{
        if (number % 2 === 0){
            result.push(number)
        }
    })
    return result;
}

console.log(getEvens())

//Write a function called sumElements that returns the sum total of all the elements of the original 
//array.

const sumElements = function(){
    let total = 0;

    numbers.forEach((number)=>{
        total += number;    
    })

    return total;
}

console.log(sumElements())