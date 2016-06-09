class Santa
    
    def initialize(gender, ethnicity)
        puts "Initializing Santa instance ..."
        @gender = gender
        @ethnicity = ethnicity
        @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
        @age = 0
    end
   
    def speak
       puts "Ho, ho, ho! Haaaappy holidays!"
    end
   
   
    def eat_milk_and_cookies(cookie_type)
        puts "That was a good #{cookie_type}!"
    end
    
    def celebrate_birthday
        age += 1
    end
    
    def get_mad_at(reindeer)
        if @reindeer_ranking.include?(reindeer)
            @reindeer_ranking.delete(reindeer)
            @reindeer_ranking << reindeer
        else
            puts "Error: not a valid reindeer!"
        end
    end
    
    def change_gender(new_gender)
        @gender = new_gender
    end
    
    def age
        @age
    end
    
    def ethnicity
        @ethnicity
    end
    
end

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# puts santas

fred_claus = Santa.new("male", "black")

fred_claus.get_mad_at("Dancer")

fred_claus.change_gender("female")

