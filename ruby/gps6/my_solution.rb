# Virus Predictor

# I worked on this challenge by myself
# We spent [#] hours on this challenge.

# Release 1
# This program calculates some theoretical statistics based on some figures for the area
# It defines a class, VirusPredictor, which can be constructed for any given state with a given population and population density
# The class methods provide the calculations and outputs
# In the provided examples, the data inputs are pulled from a hash of the 50 states, stored in the external file

# Release 2
# EXPLANATION OF require_relative
# The require_relative statement in this program allows this file to use the content of the external file, state_data.rb.
# By referencing the file name, the ruby compiler simply treats the two files as one combined file with all of the content of each.
# require_relative accepts a path that is relative to the file calling it. In this case, state_data.rb is in the same directory as this file,
# so require_relative 'state_data' is sufficient to reference it. This is notably cleaner than calling the entire path.

# Release 3
# The STATE_DATA hash in state_data.rb contains 50 key-value pairs, one for each state.
# The key of each pair is a string with the name of the state
# The value of each pair is another hash
# Each of those hashes contains two key-value pairs
# The keys are the symbols :population_density and :population.
# The values are corresponding integer numbers.
# The main hash, STATE_DATA, has its key-value pairs declared using the rocket syntax, like this - Key => Value
# The sub-hashes in each value are defined using the colon syntax, like this - key: value
# Rocket syntax is good because it allows keys of any object type, including the useful string keys used here.
# Colon syntax is cleaner, but it requires the use of symbols as keys.
# I would guess that the phrase "Hashy hash" refers to a hash containing more hashes.
# STATE_DATA is a hash, and its scope is global, because it is declared via the require_relative keyword in my_solution.rb, outside of any methods or classes

# Release 4 - Comments added below

# Release 5
# Added DRY implementation to print virus effects for all 50 states.
# I believe this belongs outside of the class, because the class should be able to interpret multiple data sets, not just US states.
# For example, this could be performed on a Hash of Australia's states and territories, or on Canada's provinces

# Release 6
# I refactored these methods by removing arguments - the instance variables are already in the scope we're using, so there's no need to feed them in each time.

# Release 7
# The private keyword makes all the content within the class below it unavailable outside of the class
# In this case, this means that the predicted_deaths and speed_of_spread methods cannot be called individually in our driver code outside of the class
# Only methods within the class can call these, so the virus_effects method allows external access to the data from these methods
# If we moved the private keyword above virus_effects, that method would no longer be available outside the class, so our driver code would no longer function
# and would instead throw an error

# Release 8
# I refactored predicted_deaths by removing the repeated calculation of the number_of_deaths variable, instead using the if statement to set a death_rate
# variable, and using it to only calculate the number of deaths at the end.
# The only change I made to speed_of_spread was changing the += operators to just = assignments. There's no need to complicate things by thinking of
# the speed variable as a value that we are incrementing, rather than just defining based on the given criteria



require_relative 'state_data'

class VirusPredictor


# This method accepts 3 arguments for the New class instance constructor, setting the relevant arguments to their instance-variable equivalents
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


# This method is basically just driver code that calls the two private methods that perform the calculations
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private


# This method calculates a number of deaths based on population density. A longish if/else statement is used to categorize population densities
# into 5 tiers, with higher-density states having a larger percentage of deaths.
# The floor method is used on each result to produce an integer value.
# The method prints its results to the console.

  def predicted_deaths
    # predicted deaths is solely based on population density
    death_rate = 0.0
    
    if @population_density >= 200
      death_rate = 0.4
    elsif @population_density >= 150
      death_rate = 0.3
    elsif @population_density >= 100
      death_rate = 0.2
    elsif @population_density >= 50
      death_rate = 0.1
    else
      death_rate = 0.01
    end

    number_of_deaths = (@population * death_rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# This method calculates the speed of the spread in much the same way as the above method, using an if statement with 5 tiers of population density to
# define the speed, then printing the result to the console



  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================

# Iterate through STATE_DATA Hash
# for all key-value pairs, declare a new VirusPredictor instance for the current state
# call the .virus_effects method on that state

STATE_DATA.each do |key, value| 
    current_state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
    current_state.virus_effects
end




#=======================================================================
# Reflection Section

# These first two questions were asked in releases 2 and 3, so I've repeated my answers below:


# What are the differences between the two different hash syntaxes shown in the state_data file?
    # The main hash, STATE_DATA, has its key-value pairs declared using the rocket syntax, like this - Key => Value
    # The sub-hashes in each value are defined using the colon syntax, like this - key: value
    # Rocket syntax is good because it allows keys of any object type, including the useful string keys used here.
    # Colon syntax is cleaner, but it requires the use of symbols as keys.


# What does require_relative do? How is it different from require?
    # The require_relative statement in this program allows this file to use the content of the external file, state_data.rb.
    # By referencing the file name, the ruby compiler simply treats the two files as one combined file with all of the content of each.
    # require_relative accepts a path that is relative to the file calling it. In this case, state_data.rb is in the same directory as this file,
    # so require_relative 'state_data' is sufficient to reference it. This is notably cleaner than calling the entire path.


# What are some ways to iterate through a hash?
    # Ruby has several built-in methods for iterating over hashes, including .each, .each_pair, .each_key, and .collect


# When refactoring virus_effects, what stood out to you about the variables, if anything?
    # I noticed right away that they were all the same color in my editor, and all had the @ character at the start.
    # This clued me in to the fact that they were all class instance variables, which were within the current scope and didn't need to be
    # passed in as aguments
    
# What concept did you most solidify in this challenge?
    # I think this challenge really helped me with hash syntaxes. Using a "hashy hash" with both types helped me to work through the way the keys and values correspond.