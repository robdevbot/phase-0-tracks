# module Shout
#     def self.yell_angrily(words)
#         words + "!!!" + " :("
#     end
    
#     def self.yell_happily(words)
#         words.upcase + "!!!" + " :D"
#     end
# end

# puts Shout.singleton_methods
# puts Shout.yell_angrily("Hey!")
# puts Shout.yell_happily("Hey!")
module Shout
    def yell_angrily(words)
        words + "!!!" + " :("
    end
    
    def yell_happily(words)
        words.upcase + "!!!" + " :D"
    end
end


class Politician
    include Shout
end

class Hero
    include Shout
end


trump = Politician.new
puts trump.yell_happily("A huge wall!")
puts trump.yell_angrily("My hands are perfectly normal")


bruce_campbell = Hero.new

puts bruce_campbell.yell_angrily("Oooh that's gotta hurt")
puts bruce_campbell.yell_happily("Hail to the king, baby")


