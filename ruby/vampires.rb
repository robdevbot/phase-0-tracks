puts "How many employees do you need to process?"
employee_count = gets.chomp

employee_count.to_i.times do


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
    

    vampire_status = "Results inconclusive."
    
    if (age.to_i == calculated_age) && (garlicbread || insurance)
        vampire_status = "Probably not a vampire"
    end
    
    if (age.to_i != calculated_age) && (!garlicbread || !insurance)
        vampire_status = "Probably a vampire"
    end
    
    if (age.to_i != calculated_age) && !garlicbread && !insurance
        vampire_status = "Almost certainly a vampire"
    end
    
    if name == "Drake Cula" || name == "Tu Fang"
        vampire_status = "Definitely a vampire"
    end    
    
    puts "Please list any allergies you have. Type done when complete."
    
    allergy = "allergy"
    
    while allergy != "sunshine" && allergy != "done"
        allergy = gets.chomp
        
        if allergy == "sunshine"
            vampire_status = "Probably a vampire"
        end

    end
  
    puts vampire_status

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."