const Person = function(name, animal){
    this.name = name;
    this.animal = animal;

    // this.greet = function(){
    //     return `Hello, I'm ${this.name}`;
    // }
}

Person.prototype.greet = function (){
    return `Hello, I'm ${this.name}`;
}

Person.prototype.feedPet = function(food){
    return `${this.name} fed ${this.animal} ${food}`
}

const shaggy = new Person('Shaggy', 'Scooby Doo');
let noises = shaggy.feedPet('Scooby Snacks');
console.log(noises);

module.exports = Person;
