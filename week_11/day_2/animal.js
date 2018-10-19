const Animal = function(name, species){
    this.name = name;
    this.species = species;
}

Animal.prototype.eat = function(food){
    return `${this.name} ate a ${food}`;
}

const scooby = new Animal('Scooby', 'Dog');
let noises = scooby.eat('Scooby Snack');
console.log(noises);

// ಠ_ಠ
module.exports = Animal;