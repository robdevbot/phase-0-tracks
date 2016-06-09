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