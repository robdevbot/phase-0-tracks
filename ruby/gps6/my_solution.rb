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





require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end



  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section