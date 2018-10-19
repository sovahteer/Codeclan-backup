chicken_hashes = [
  { name: "Margaret", age: 2, eggs: 2},
  { name: "Hetty", age: 1, eggs: 2},
  { name: "Henrietta", age: 2, eggs: 4},
  { name: "Audrey", age: 3, eggs: 1},
  { name: "Mabel", age: 5, eggs: 0}
]


#counts the number of eggs, and returns num eggs
def count_eggs(chickens)
  total_eggs = 0
  for chicken in chickens
    if chicken[:eggs] > 0
      p "Woohoo - we found some eggs"
    end
    total_eggs += chicken[:eggs]
  end

  return total_eggs
end

num_of_eggs = count_eggs(chicken_hashes)
p "for breakfast we are having #{num_of_eggs} eggs."

def find_chicken_by_name(chicken_hashes, name)
  for chicken in chicken_hashes
    if chicken[:name] == name
      return chicken
    end
  end
end

find_chicken_by_name(chicken_hashes, "Audrey")
find_chicken_by_name(chicken_hashes, "Mabel")
