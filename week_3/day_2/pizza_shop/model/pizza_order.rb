require 'pry-byebug'
require 'pg'

class PizzaOrder
  attr_writer :flavour
  def initialize(options)
    @first_name = options['first_name'] #String
    @last_name = options ['last_name'] #String
    @flavour = options ['flavour'] #String
    @amount = options ['amount'].to_i # Integer
  end

  def PizzaOrder.all
    db = PG.connect({ dbname: 'pizza_shop',
    host: 'localhost'})
    sql = "SELECT * FROM pizza_orders"
    db.prepare( "all", sql)
    orders = db.exec_prepared("all")
    db.close()

    return orders
    end

  def update()
    db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
    sql = "UPDATE pizza_orders SET (first_name,
    last_name, flavour, amount) = ($1,$2,$3,$4)
    WHERE id = $5"
    values = [ @first_name, @last_name, @flavour,
    @amount, @id ]
    db.prepare( "update" ,sql)
    db.exec_prepared("update" , values)
    db.close()
    end

  def delete()
    db = PG.connect({ dbname: 'pizza_shop', host: 'localhost' })
    sql = "DELETE FROM pizza_orders WHERE id = $1"
    values = [ @id ]
    db.prepare( "delete" ,sql)
    db.exec_prepared("delete" , values)
    db.close()
  end

  def PizzaOrder.delete_all()
    db = PG.connect( { dbname: 'pizza_shop', host: 'localhost' })
    sql = "DELETE FROM pizza_orders"

    db.prepare( "delete_all" ,sql)
    db.exec_prepared("delete_all" , values)
    db.close()
  end

  def save
   db = PG.connect( { dbname: 'pizza_shop', host: 'localhost' } )
   sql = "INSERT INTO pizza_orders (first_name,last_name,flavour,amount) VALUES
   ($1, $2, $3, $4);"
   values = [@first_name, @last_name, @flavour, @amount]
   db.prepare( "save" ,sql)
   db.exec_prepared("save" , values)
   db.close()
  end

end
