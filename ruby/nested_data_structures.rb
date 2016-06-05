# 
USA = {
    "Illinois" => ["Chicago", "Peoria", "Springfield", "Champagne"],
    "Michigan" => ["Detroit", "Lansing", "Ann Arbor", "Kalamazoo"],
    "Texas" => ["Dallas", "Houston", "Galveston", "Austin"],
    "New York" => ["New York City", "Albany", "Buffalo"],
    "California" => ["Los Angeles", "Sacramento", "San Francisco", "Sacramento", "San Diego", "Vallejo"],
    "Alaska" => ["Juneau", "Anchorage", "Nome"]
}


puts "The largest city in Illinois is #{USA["Illinois"][0]}"

puts "Here are some cities in Texas: #{USA["Texas"]}"

puts "Here are some Alaskan cities in a nicer format:\n" 
USA["Alaska"].each {|x| puts x }