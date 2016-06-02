def add_to_array(arr, item)
  return arr << item
end

def build_array(x,y,z)
  test = [x, y, z]

end


test_array = []
p test_array
test_array << "1"
test_array << "2"
test_array << "3"
test_array << 4
test_array << 5
p test_array
test_array.delete_at(2)
p test_array
test_array.insert(2, "String")
p test_array
test_array.shift
p test_array
test_array.include?(5)

second_array = [56, "Rob"]

combined_array = test_array + second_array
p combined_array

build_array(1, "hey", true)
add_to_array([], "a")
build_array(1, "hey", true)
add_to_array([], "a")
add_to_array(["a", "b", "c", 1, 2], 3)
add_to_array(["The Black Panther", "Thor", "Ant-Man"], "Tj")
add_to_array(["Austin", "Chicago", "NY"], 3)