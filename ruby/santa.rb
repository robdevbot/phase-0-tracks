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
        @age += 1
    end
    
    def get_mad_at(reindeer)
        if @reindeer_ranking.include?(reindeer)
            @reindeer_ranking.delete(reindeer)
            @reindeer_ranking << reindeer
        else
            puts "Error: not a valid reindeer!"
        end
    end
    

    attr_accessor:gender
    attr_reader:ethnicity
    attr_accessor:age
    
    
end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

50.times do
    x = Santa.new(example_genders.sample, example_ethnicities.sample)
    x.age = rand(140)
    puts "This Santa is #{x.gender}, #{x.ethnicity}, and #{x.age} years old!"
end

