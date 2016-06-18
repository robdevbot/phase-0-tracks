var colors = ["blue", "green", "red", "yellow"];
var horses = ["Pete", "Spot", "Ed", "Secretariat"];

colors.push("purple");
horses.push("Seabiscuit")

console.log(colors);
console.log(horses);

var horses_with_colors = {};

for (i = 0; i < colors.length; i++) {
    horses_with_colors[horses[i]] = colors[i]

}


console.log(horses_with_colors)