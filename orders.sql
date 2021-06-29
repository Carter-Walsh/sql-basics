-- -- #1
CREATE TABLE orders (
	 order_id SERIAL PRIMARY KEY,
  person_id INT,
  product_name VARCHAR,
  product_price FLOAT,
  price_quantity INT
);

--  #2, #3, #4
INSERT INTO orders (person_id, product_name, product_price, price_quantity)
	VALUES (1, 'Beach Ball', 19.99, 2);
  
INSERT INTO orders (person_id, product_name, product_price, price_quantity)
	VALUES (1, 'Computer', 8000.00, 1);
  
INSERT INTO orders (person_id, product_name, product_price, price_quantity)
	VALUES (2, 'Football', 29.99, 8);

INSERT INTO orders (person_id, product_name, product_price, price_quantity)
	VALUES (2, 'Grill', 258.39, 1);

INSERT INTO orders (person_id, product_name, product_price, price_quantity)
	VALUES (3, 'Xbox', 499.99, 1);
  
-- #5
SELECT * FROM orders;

-- #6
SELECT SUM(price_quantity) FROM orders;

-- #7 
SELECT SUM(product_price * price_quantity) AS order_total
FROM orders;

-- #8
SELECT SUM(product_price * price_quantity) 
FROM orders
GROUP BY person_id;