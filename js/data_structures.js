// var colors = ["blue", "green", "red", "yellow"];
// var horses = ["Pete", "Spot", "Ed", "Secretariat"];

// colors.push("purple");
// horses.push("Seabiscuit")

// console.log(colors);
// console.log(horses);

// var horses_with_colors = {};

// for (i = 0; i < colors.length; i++) {
//     horses_with_colors[horses[i]] = colors[i]

// }

// console.log(horses_with_colors)

function Car(make, model, cylinders, color) {
    
    
    this.make = make;
    this.model = model;
    this.cylinders = cylinders;
    this.color = color
    
    this.honk = function() { console.log("Honk honk!"); };
    
    
    
}

var crv = new Car("Honda", "CRV", 4, "red");
var kicks = new Car("Toyota", "FJ", 8, "silver");
var hooptie = new Car("Datsun", "Frontier", 3, "rust");

console.log(crv.color);
kicks.honk();
console.log(hooptie.cylinders);