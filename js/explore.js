// reverse string function
// iterate backwards through a string, starting with the index at it's length *minus one* and going to 0
// for each character, add it to a new string
// return the new string

var inputString = "hello";
var newString = "";

for (i = inputString.length - 1; i >= 0; i--) {
    // console.log("i is equal to " + i);
    // console.log("character at index i is " + inputString[i]);
    newString += inputString[i];
}

console.log(newString);