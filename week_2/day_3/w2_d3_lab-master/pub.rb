require_relative('drink.rb')
require_relative('customer.rb')

class Pub

  attr_reader :name, :till, :drinks

  def initialize (name, till)
    @name = name
    @till = 0
    @drinks =[]
  end

  def till_count
    return @till
  end

  def add_drink_in_bar (new_drink)
    return @drinks << new_drink
  end

  # def add_all_drinks (all_drinks)
  #   return @drinks << all_drinks
  # end
  def sell_drink()
    return @drinks.pop()
  end

  def add_money_to_pub(new_drink_price)
    return @till += new_drink_price
  end
  #
  def check_customer_age()
    return @euan.age
  end

  def check_drunkenness()
    return @euan.drunkenness
  end

  def get_barred(person)
    if person.to_i >= 10
      return "You're barred!"
  end
end

end
