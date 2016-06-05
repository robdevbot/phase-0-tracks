# Prompt the user for info: name, age, number of children, decor theme, likes_lime, needs_sandproofing, vintage_style
# Take that info in
# Create a hash with all of that info
# Print the hash to the screen
# Prompt the user asking if they want to update any values
# take an input of the data-name to be changed
# if the input isn't 'done', prompt the user for a new value
# convert data-name to a symbol and update that entry in the hash with the new value
# Print the hash to the screen


puts "Please enter your name."
name = gets.chomp

puts "Please enter your age."
age = gets.chomp.to_i

puts "Please enter your number of children."
number_of_children = gets.chomp.to_i

puts "Please enter your preferred decor theme."
decor_theme = gets.chomp

puts "Do you like lime? (y/n)"
lime_yn = gets.chomp

if lime_yn == "y"
    likes_lime = true
else
    likes_lime = false
end


puts "Do you need sandproofing? (y/n)"
sandproofing_yn = gets.chomp

if sandproofing_yn == "y"
    needs_sandproofing = true
else
    needs_sandproofing = false
end


puts "Please enter your preferred style of vintage"
vintage_style = gets.chomp


customer_data = {
    name: name,
    age: age,
    number_of_children: number_of_children,
    decor_theme: decor_theme,
    likes_lime: likes_lime,
    needs_sandproofing: needs_sandproofing,
    vintage_style: vintage_style
}

puts customer_data












