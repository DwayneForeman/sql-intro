/*

Orders
In the orders.sql file, write out the code for the following problems:

Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

Add 5 orders to the orders table.

Make orders for at least two different people.

person_id should be different for different people.

Select all the records from the orders table.

Calculate the total number of products ordered.

Calculate the total order price.

Calculate the total order price by a single person_id.


*/



CREATE TABLE orders (
  order_id INTEGER,
  person_id SERIAL PRIMARY KEY,
  product_name VARCHAR(20),
  product_price INTEGER,
  quantity INTEGER
)

INSERT INTO orders (order_id, product_name, product_price, quantity)
VALUES (1, 'pizza', 3, 2),
(2, 'burger', 8, 1),
(3, 'chicken', 12, 6),
(4, 'pasta', 15, 1),
(5, 'fish', 13, 1);

SELECT * FROM orders

SELECT SUM (quantity) FROM orders;

SELECT SUM (product_price) FROM orders;

SELECT SUM (product_price) FROM orders WHERE person_id = '1';




------------------------
-- Create Tables

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255),
  password_hash VARCHAR(255)
)

CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  FOREIGN KEY (id) REFERENCES users(id),
  name VARCHAR(255),
  instructions TEXT,
  isPublic BOOLEAN NOT NULL DEFAULT FALSE
)

CREATE TABLE saved_recipes (
  id SERIAL PRIMARY KEY,
  FOREIGN KEY (id) REFERENCES users(id),
  FOREIGN KEY(id) REFERENCES recipes(id)
)

CREATE TABLE ingredients (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
)

CREATE TABLE recipe_ingredients (
  id SERIAL PRIMARY KEY,
  FOREIGN KEY(id) REFERENCES ingredients(id),
  FOREIGN KEY(id) REFERENCES recipes(id)
)

CREATE TABLE groceries_list (
  id SERIAL PRIMARY KEY,
  FOREIGN KEY (id) REFERENCES users(id),
  FOREIGN KEY(id) REFERENCES ingredients(id)
)

CREATE TABLE occasions (
  id SERIAL PRIMARY KEY,
  FOREIGN KEY (id) REFERENCES users(id),
  name VARCHAR(255)
)

CREATE TABLE occasions_recipe (
  id SERIAL PRIMARY KEY,
  FOREIGN KEY (id) REFERENCES users(id),
  FOREIGN KEY(id) REFERENCES recipes(id)
)


----------------------------------------

-- Insert Data

INSERT INTO users (email, password_hash)
VALUES ('DwayneForemanJr@yahoo.com', 123456),
('Jon@yahoo.com', 4567),
('Kim@yahoo.com', 1111);


INSERT INTO recipes (name, instructions)
VALUES ('Sams Grill Cheese', 'Use butter and bread'),
('Special Stew', 'Marinate beef for 3 hours');

INSERT INTO ingredients (name)
VALUES ('butter'),
('rice'),
('bacon'),
('bread'),
('milk');

INSERT INTO occasions(name)
VALUES ('birthday'),
('christmas'),
('halloween');

