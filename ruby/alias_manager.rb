# Prompt the user for a name and collect it into a variable
# Swap the first and last name:
## Put the names into an array with split
## Assign the first and last to string variables
## Reassign the values in the array
## Join the array and reassign to name variable

all_names = {}

continue_or_quit = ""

while continue_or_quit != "quit"
    
    puts "Please enter your first and last name, separated by a single space:"
    name = gets.chomp
    
    code_name = name
    
    first_and_last = code_name.split(" ") # this chunk reverses the name, changing Joe Smith to Smith Joe
    first = first_and_last[0]
    last = first_and_last[1]
    first_and_last[0] = last
    first_and_last[1] = first
    code_name = first_and_last.join(" ")
    
    
    vowels = "aeiouAEIOU"
    consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    
    i = 0
    
    while i < code_name.length
    
        if code_name[i] != " " && vowels.include?(code_name[i]) # if the letter is a non-space vowel
            if code_name[i] == "u"
                code_name[i] = "a"
            elsif code_name[i] == "U"
                code_name[i] = "A"
            else
                code_name[i] = vowels[vowels.index(code_name[i]) + 1] # Unless it's an end-of-string condition, change the letter to the next character in the vowels string
            end
        elsif code_name[i] != " "  # if the letter is a non-space consonant
            if code_name[i] == "z"
                code_name[i] = "b"
            elsif code_name[i] == "Z"
                code_name[i] = "B"
            else
                code_name[i] = consonants[consonants.index(code_name[i]) + 1] # Unless it's an end-of-string condition, change the letter to the next character in the consonants string
            end
        end
            
        i += 1
    
    end
    all_names[code_name] = name
    
    puts "Your secret code name is #{code_name}!"
    
    puts "Hit enter to encode another name, or type quit to exit."
    continue_or_quit = gets.chomp

end


all_names.each {|key, value| puts "#{key} is actually #{value}" }