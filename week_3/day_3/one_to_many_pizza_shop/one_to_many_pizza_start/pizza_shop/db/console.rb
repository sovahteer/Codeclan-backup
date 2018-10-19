require("pry")
require_relative("../models/pizza_order")
require_relative("../models/customer")
#test delete_all
# Customer.delete_all()

customer1 = Customer.new({'name' => 'Melinda'})
customer2 = Customer.new({'name' => 'Tony'})
customer1.save()
customer2.save()
# test update
customer1.name = "Mellinda"
customer1.update()
#test delete
customer2.delete()
#test all

pizza_order1 = PizzaOrder.new({'customer_id' => customer1.id,'topping' => 'Tropicana','quantity' => '3'})
pizza_order2 = PizzaOrder.new({'customer_id' => customer1.id,'topping' => 'Tropicana','quantity' => '3'})

pizza_order1.save()
pizza_order2.save()
# test update
pizza_order1.topping = "Diabolla"
pizza_order1.update()

p customer1.pizza_orders()
#test delete
pizza_order2.delete()
#test all
p PizzaOrder.all()
