require 'pry-byebug'
require_relative 'model/pizza_order'

PizzaOrder.delete_all()


order1 = PizzaOrder.new(
  {'first_name' => 'Euan',
    'last_name' => 'Cunningham',
    'flavour' => 'Texas BBQ',
    'amount' => '10'
  }
)

order2 = PizzaOrder.new(
  {
    'first_name' => 'Chris',
    'last_name' => 'Gilroy',
    'flavour' => 'Pineapple',
    'amount' => '20'
  }
)

order1.save()
order2.save()
# order1.delete()

order1.flavour - "mushroom"
order1.update()

all_pizza_orders = PizzaOrder.all()
p all_pizza_orders
