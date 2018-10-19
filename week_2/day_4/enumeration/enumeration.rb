pets = [
{
    name: "Sir Percy",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "King Bagdemagus",
    pet_type: :cat,
    breed: "British Shorthair",
    price: 500
},
{
    name: "Sir Lancelot",
    pet_type: :dog,
    breed: "Pomsky",
    price: 1000,
},
{
    name: "Arthur",
    pet_type: :dog,
    breed: "Husky",
    price: 900,
},
{
    name: "Tristan",
    pet_type: :dog,
    breed: "Basset Hound",
    price: 800,
},
{
    name: "Merlin",
    pet_type: :cat,
    breed: "Egyptian Mau",
    price: 1500,
}
]
#
# # Print out all of the names using a loop
# for pets in pets
#   puts pets [:name]
# end
# # Print out all of the names using an enumerable
# pets.each do |pet|
#   puts pet[:name]
# end
# # Find a pet using a loop and if statement
# result = nil
# for pet in pets
#   if pet[:name] == "Arthur"
#     result = pet
#   end
# end
#
# puts result
# # Find a pet using an enumerable
# p pets.find { |pet| pet[:name] == "Arthur" }

## Task: using enumerable methods:

## 1. Find the pet which breed is Husky
p pets.find { |pet| pet[:breed] == "Husky" }
## 2. Make an array of all of the pets' names
p pets.map { |pet| pet[:name] }
# # ## 3. Find out if there are any pets of breed 'Dalmation' (true or false)
p pets.any? { |pet| pet[:breed] == "Dalmation" }
# # ## 4. Find the most expensive pet i.e. pet with the highest/maximum price
p (pets.map { |pet| pet[:price] }).max
# ## 5. Find the total value (price) of all of the pets added together.
p (pets.map {|pet| pet[:price]}).reduce(0) {|sum, price| sum + price}
# # ## 6. Change each pet so their price is 50% cheaper
p pets.map! { |pet| pet[:price] / 2}
