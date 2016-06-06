# def dogsnames
#   puts "Here are some great dogs!"
#   yield("Trigger", "Pugs")
# end

# dogsnames { |dog1, dog2| puts "#{dog1} and #{dog2} are cute dogs!" }


# letters = ["a", "b", "c", "d", "e"]

# puts "before each call"
# p letters
# new_letters = []


# modified_letters = letters.map do |letter|
#     puts letter
#     letter.next
# end

# puts "after each call"
# p letters
# p modified_letters




# ###################

# numbers = {1 => 'one', 2 => 'two'}

# numbers.each do |digit, word|
#     puts "#{digit} is spelled out as #{word}"
# end


# simpsons = ["Homer", "Marge", "Bart", "Lisa", "Maggie"]

# actors = {johnny_depp: "Jack Sparrow", :mark_harmon => "Gibbs", :emma_watson => "Hermione" }

# p simpsons
# simpsons.each {|x| puts "#{x} is a primary character on The Simpsons" }
# p simpsons
# simpsons.map! do |x|
#     x += " Simpson"
# end
# p simpsons

# p actors
# actors.each {|x, y| puts "#{x} is most famous for their role as #{y}" }
# p actors


puts "\n"
puts "#1: A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5)."
puts "\n"

#Array:
count = [5, 10, 15, 20]
p count
count.delete_if { |number| number >= 14 }
p count

#Hash:
count = {
    5 => "5*1",
    10 => "5*2",
    15 => "5*3",
    20 => "5*4"
}
p count
count.delete_if { |number, word| number >= 14 }
p count



puts "\n"
puts "#2: A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5)."
puts "\n"

#Array:
count = [25, 30, 35, 40]
p count
count.keep_if { |number| number >= 29 }
p count

#Hash:
count = {
    25 => "5*5",
    30 => "5*6",
    35 => "5*7",
    40 => "5*8"
}
p count
count.keep_if { |number, xtable| number >= 29 }
p count

puts "\n"
puts "#3: A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!"
puts "\n"

#Array:
integers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p integers
integers.select! { |x| x > 5 }
p integers

#Hash:
integers = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five"
}
p integers
integers.select! { |key, word| key > 3 }
p integers





puts "\n"
puts "#4: A method that will remove items from a data structure until the condition in the block evaluates to false, then stops."
puts "\n"

#Array
count = [65, 70, 75, 80, 81]

p count
count.reject! { |number| number < 79 }
p count

#Hash
count = {
    65 => "5*5",
    70 => "5*6",
    75 => "5*7",
    80 => "5*8",
    81 => "(5*8)+1"
}

p count
count.reject! { |number, xtable| number < 79 }
p count