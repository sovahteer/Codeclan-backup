require 'pry'
require '../db/sql_runner'

class Customer

  attr_accessor :name
  attr_reader :id

  def initialize(options)
    @name = options['name']
    @id = options['id'].to_i if options['id']
  end

  def pizza_orders
    sql = "SELECT * FROM pizza_orders WHERE customer_id = $1"
    values = [ @id ]
    pizza_orders = SqlRunner.run(sql, values)
    return pizza_orders.map{ |pizza_order_hash|
    PizzaOrder.new(pizza_order_hash) }
  end
  def save()
    sql = "INSERT INTO customers ( name ) VALUES ( $1 )
          RETURNING id;"
    values = [@name]
    customers = SqlRunner.run(sql, values)
    @id = customers [0]["id"].to_i
  end

  def update()
    sql = "UPDATE customers SET name = $1 WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM customers where id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM customers"
    orders = SqlRunner.run(sql)
    return orders.map { |order| Customer.new(order)}
  end


end
