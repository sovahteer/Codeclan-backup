chickens = [
  { name: "Margaret", age: 2, eggs: 2},
  { name: "Hetty", age: 1, eggs: 2},
  { name: "Henrietta", age: 2, eggs: 4},
  { name: "Audrey", age: 3, eggs: 1},
  { name: "Mabel", age: 5, eggs: 0}
]

total_eggs = 0
for chicken in chickens
  if chicken[:eggs] > 0
    p "Woohoo - we found some eggs"
  total_eggs += chicken[:eggs]
end

p "for breakfast, we are having #{total_eggs} eggs"
