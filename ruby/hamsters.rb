puts "What is the hamster's name?"
name = gets.chomp

puts "What is the hamster's volume level on a scale of 1-10?"
vol = gets.chomp.to_i

puts "What color is the hamster's fur?"
color = gets.chomp

puts "Is the hamster adoptable? (y/n)"
adoptable = true
adoptables = gets.chomp
if adoptables = "y"
  adoptable = true
else adoptables = "n"
  adoptable = false
end

puts "How old is the hamster?"
age = gets.chomp
if age != ""
  age = age.to_i
else
  age = nil
end

puts "Name: #{name}"
puts "Volume: #{vol}"
puts "Fur color: #{color}"
puts "Adoptable: #{adoptable}"
puts "Age: #{age}"