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


integers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p integers

def five_or_more(array)
    new_array = []
    array.map! do |x|
        if (x > 5)
            new_array << x
        end
    end
end

five_or_more(integers)
p integers
    
    





