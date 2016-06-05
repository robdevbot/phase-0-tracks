# Prompt the user for info: name, age, number of children, decor theme, likes_lime, needs_sandproofing, vintage_level
# Take that info in
# Create a hash with all of that info
# Print the hash to the screen
# Prompt the user asking if they want to update any values
# take an input of the data-name to be changed
# if the input isn't 'done', prompt the user for a new value
# convert data-name to a symbol and update that entry in the hash with the new value
# Print the hash to the screen


puts "Please enter your name"
name = gets.chomp

puts "Please enter your age"
age = gets.chomp.to_i

puts "Please enter your number_of_children"
number_of_children = gets.chomp.to_i

puts "Please enter your decor_theme"
decor_theme = gets.chomp

puts "Please enter your likes_lime"
likes_lime = gets.chomp.to_b

puts "Please enter your needs_sandproofing"
needs_sandproofing = gets.chomp.to_b

puts "Please enter your vintage_level"
vintage_level = gets.chomp


customer_data = {
    name: name,
    age: age,
    number_of_children: number_of_children,
    decor_theme: decor_theme,
    likes_lime: likes_lime,
    needs_sandproofing: needs_sandproofing,
    vintage_level: vintage_level
}

puts customer_data
