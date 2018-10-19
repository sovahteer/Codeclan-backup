my_number = 5
p "what number am I thinking of?"

value = gets.to_i()

while (value != my_number)
  if (value < my_number)
  p "too low!"
else if (value > my_number)
  p "too high"
end
  p "nope! try again ..."
  value = gets.to_i()
end

p "Yes!"
