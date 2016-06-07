# class Puppy
#   def fetch(toy)
#     puts "I brought back the #{toy}"
#   end

#   def speak(x)
#     x.times{puts "Woof"}
#   end

#   def roll_over
#     puts "*rolls over*"
#   end

#   def dog_years(x)
#     p x*7
#   end

#   def heel
#     puts "I like walking next to my human"
#   end

#   def initialize
#     puts "Initializing new puppy instance..."
#   end
# end

# rex = Puppy.new
# rex.fetch("ball")
# rex.speak(5)
# rex.roll_over
# rex.dog_years(7)
# rex.heel

class Student
  def initialize
    puts "Creating a student."
  end

  def study(hours)
    hours.times { puts "Studied for an hour." }
  end

  def party(drinks)
    puts "Partied hard. Drank #{drinks} drinks."
  end
  
end


