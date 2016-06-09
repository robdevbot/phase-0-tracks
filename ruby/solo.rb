# Class - moped
# has attributes, make(string), model(string), year(integer), and runs(boolean)
# method intialize - sets variables, including runs with default value of true
# method tune_engine - prints a fun message, makes sure runs is set to true
# method tune_brakes - just prints a fun message
# method add_gas - prints a message with an integer variable taken and returned for quantity

class Moped

  def initialize(make, model, year)
      @make = make
      @model = model
      @year = year
      @runs = true
  end
  
  def tune_engine
    puts "RMMMMM RMMMM! Sounds good!"
  end
  
  def tune_brakes
    puts "Squeak squeak! Brakes are working well!"
  end
   
  def add_gas(gallons)
    puts "Added #{gallons} gallons of gas!"
  end
    
  attr_reader:make
  attr_reader:model
  attr_reader:year
  attr_accessor:runs

end


all_mopeds = []

puts "Let's add a moped to our garage. Hit enter to continue, or type 'done' to quit."

done_or_not = ""

while done_or_not != "done"

    puts "What company made this moped?"
    make = gets.chomp
    
    puts "What's the model name?"
    model = gets.chomp
    
    puts "What year was it made?"
    year = gets.chomp.to_i
    
    ped = Moped.new(make, model, year)
    
    all_mopeds << ped
    
    puts "Let's add another moped to our garage. Hit enter to continue, or type 'done' to quit."

    done_or_not = gets.chomp
end

puts "Here's what's in your garage:"

all_mopeds.each do |x|
   puts "A #{x.year} #{x.make} #{x.model}"
end