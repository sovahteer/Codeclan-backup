DROP TABLE pizza_orders;

CREATE TABLE pizza_orders (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  flavour VARCHAR(255),
  amount INT2
);

INSERT INTO pizza_orders (first_name, last_name, flavour, amount)
       VAlUES ('Euan', 'Cunningham', 'Texas BBQ', 1);

INSERT INTO pizza_orders (first_name, last_name, flavour, amount)
       VAlUES ('Chris', 'Gilroy', 'Pineapple', 10);
