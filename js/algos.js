function longest(array) {
    
    var longest_index = 0;
    var greatest_length = 0;
    
    for (i=0; i<array.length; i++) {
        
        if (array[i].length > greatest_length) {
            longest_index = i;
            greatest_length = array[i].length;
        }
    
    }
    
    return array[longest_index]

}


var superheroes = ["Hulk", "Thor", "Iron Man", "Captain America", "New Superhero with a crazy long name"];
var car_companies = ["Ford", "Chevrolet", "Toyota", "Honda", "Volkswagen", "Saab"];
var birds = ["Pelican", "Toucan", "Ostrich", "Wren", "American Tree Sparrow"];


console.log(longest(superheroes));
console.log(longest(car_companies));
console.log(longest(birds));