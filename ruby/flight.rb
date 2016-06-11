module Flight
    def take_off(altitude)
        puts "Taking off and ascending until reaching #{altitude} ..."
    end
end




class Bird
    include Flight
end

class Plane
    include Flight
end

bigbird = Bird.new

bigbird.take_off("1000000000 feet")
