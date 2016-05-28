puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
year_born = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
gb_response = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
ins_response = gets.chomp

calculated_age = 2016 - year_born.to_i


garlicbread = false
insurance = false

if (gb_response == "yes")
    garlicbread = true
end

if (ins_response == "yes")
    insurance = true
end


puts "Name: #{name}"
puts "Age: #{age}"
puts "Year born: #{year_born}"
puts "Calculated age: #{calculated_age}"
puts "Garlic Bread?: #{garlicbread}"
puts "Insurance?: #{insurance}"


if (age.to_i == calculated_age) && (garlicbread || insurance)
    puts "Probably a vampire"
else
    puts "Results inconclusive."
end