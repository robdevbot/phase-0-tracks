# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
    # prompt the user for a string of items separated by spaces
    # take input
    # split into an array
    # iterate over the array, inserting items into a hash
    # set default quantity to 1
    # print the list to the console Hash.keys [can you use one of your other methods here?]
# output: a hash

groc_list = {
    "bananas" => 5,
    "yogurt" => 1,
    "green_beans" => 1,
    "peanut_butter" => 1
}

puts groc_list



def add_item(list, item, quantity)
    list[item] = quantity 
    puts groc_list
end

add_item(groc_list, "koolaid", 1)



# Method to add an item to a list
# input: the list, item name and optional quantity
# steps: list[koolaid] => 1
# output: the updated hash

# groc_list.remove(koolaid)
# Method to remove an item from the list
# input: the list, item name
# steps: Hash.delete(item) 
# output: the updated hash

# Method to update the quantity of an item
# input: the list, item name, new quantity
# steps: select by key, reassign value
# output: the updated hash

# Method to print a list and make it look pretty
# input: the list
# steps: iterate over the hash, print the contents
# output: the pretty list


