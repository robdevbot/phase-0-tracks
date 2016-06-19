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
    
    // I probably should have called this something else.
    // This just checks to see if any of the key-value pairs match
    // Since I want this to only return true when something is found, instead of returning false the first time it checks a set of k-v pairs
    // , the flag variable is used to hold a true value whenever a match is found.
 
    for (var i in object1) {
        
        var bool_flag = false;
        
        if (object1[i] == object2[i]) {
            bool_flag = true;
        }
    }

    return bool_flag;
}



var superheroes = ["Hulk", "Thor", "Iron Man", "Captain America", "New Superhero with a crazy long name"];
var car_companies = ["Ford", "Chevrolet", "Toyota", "Honda", "Volkswagen", "Saab"];
var birds = ["Pelican", "Toucan", "Ostrich", "Wren", "American Tree Sparrow"];

console.log(longest(superheroes));
console.log(longest(car_companies));
console.log(longest(birds));



var steve = {name: "Steven", age: 54};
var tamir = {name: "Tamir", age: 54};

console.log(objects_equal(steve, tamir));

var jake = {name: "Jacob", age: 54};
var oscar = {name: "Oscar", number_of_kids: 4};

console.log(objects_equal(jake, oscar));




