# Array and Hash Questions
# Duration 1 hour

# A. Given the following data structure:

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']
# Work out how many stops there are in the lines array
puts lines.length
# Return 'Edinburgh Park' from the array
puts lines[1]
# How many ways can we return 'Princes Street' from the array?

  #lines[4], lines.last, lines.fetch(4), lines.drop(3), lines.pop

# Work out the index position of 'Haymarket'
  puts lines.index('Heymarket')
# Add 'Airport' to the start of the array
 lines.unshift("Airport")
# Add 'York Place' to the end of the array
lines.push("York Place")
# Remove 'Edinburgh Park' from the array using it's name
 lines.delete("Edinburgh Park")
# Delete 'Edinburgh Park' from the array by index
 lines.delete_at(1)
# Reverse the positions of the stops in the array
 lines.reverse
# Print out all of the stops using loop / while / until / for
  for stop in lines
    puts stop
  end

# B. Given the following data structure:

my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# How would you return the string "One"?
 my_hash[1]
# How would you return the string "Two"?
my_hash[:two]
# How would you return the number 2?
my_hash["two"]
# How would you add {3 => "Three"} to the hash?
my_hash[3] = "Three"
# How would you add {:four => 4} to the hash?
my_hash[:four] = 4
# C. Given the following data structure:

  users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favorite_numbers => [8, 12, 24],
      :home_town => "Linlithgow",
      :pets => {
        "blinky" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "fang" => :parrot
      }
    },
    "Anil" => {
      :twitter => "bridgpally",
      :favorite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        :colin => :snake
      }
    },
  }
# Return Jonathan's Twitter handle (i.e. the string "jonnyt")
puts users["Jonathan"][:twitter]
# Return Erik's hometown
puts users["Erik"][:home_town]
# Return the array of Erik's favorite numbers
puts users["Erik"][:favorite_numbers]
# Return the type of Anil's pet Colin
puts users["Anil"][:pets][:colin]
# Return the smallest of Erik's favorite numbers
puts users["Erik"][:favorite_numbers].min
# Return an array of Anil's favorite numbers that are even
#puts users["Anil"][:favorite_numbers].delete_if { |number| number.odd? }
even_numbers = []

 for index in users["Anil"][:favorite_numbers]
   if index.even?
     even_numbers << index
   end
 end

 puts even_numbers
# Return an array of Jonathans favourite numbers, sorted in ascending order and excluding duplicates
puts users["Jonathan"][:favourite_numbers].sort.uniq
# Add the number 7 to Erik's favorite numbers
users["Erik"][:favorite_numbers] << 7
puts users["Erik"][:favorite_numbers]
# Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
puts users["Erik"][:home_town]
# Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets]["Fluffy"] = :dog
puts users["Erik"][:pets]
# Add yourself to the users hash
users["Wojtek"] = {:twitter => "wojtek", :favourite_numbers => [12, 42, 75, 12, 5], :home_town => "Dabrowa Gornicza", :pets => { "Lali" => :cat }}
puts users





