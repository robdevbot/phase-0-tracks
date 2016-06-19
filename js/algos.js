function longest(array) {
    
    var longest_index = 0;
    var greatest_length = 0;
    
    for (i=0; i<array.length; i++) {
        
        if (array[i].length > greatest_length) {
            longest_index = i;
            greatest_length = array[i].length;
        }
    
    }
    return array[longest_index];
}

function objects_equal(object1, object2) {
    
    for (i=0; i<object1.length; i++) {
        console.log(object1[i]);
    }
    
}





var superheroes = ["Hulk", "Thor", "Iron Man", "Captain America", "New Superhero with a crazy long name"];
var car_companies = ["Ford", "Chevrolet", "Toyota", "Honda", "Volkswagen", "Saab"];
var birds = ["Pelican", "Toucan", "Ostrich", "Wren", "American Tree Sparrow"];

var steve = {name: "Steven", age: 54};
var tamir = {name: "Tamir", age: 54};

objects_equal(steve, tamir);

console.log(longest(superheroes));
console.log(longest(car_companies));
console.log(longest(birds));