module Shout
    def self.yell_angrily(words)
        words + "!!!" + " :("
    end
    
    def self.yell_happily(words)
        words.upcase + "!!!" + " :D"
    end
end


puts Shout.singleton_methods

puts Shout.yell_angrily("Hey!")
puts Shout.yell_happily("Hey!")