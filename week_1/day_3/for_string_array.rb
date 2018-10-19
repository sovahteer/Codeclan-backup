chicken_hashes = [
  { name: "Margaret", age: 2, eggs: 2},
  { name: "Hetty", age: 1, eggs: 2},
  { name: "Henrietta", age: 2, egga: 4},
  { name: "Audrey", age: 3, eggs: 1},
  { name: "Mabel", age: 5, egga: 0}
]

for chicken in chicken_hashes
  # print out chicken and it's age
    p "#{chicken[:name]} is #{chicken[:age]}"
end
