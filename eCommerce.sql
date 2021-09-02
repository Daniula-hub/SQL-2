CREATE TABLE users (
id SERIAL PRIMARY KEY,
name  VARCHAR(50),
email VARCHAR(50)
);

CREATE TABLE product (
id SERIAL PRIMARY KEY,
name  VARCHAR(50),
price INTEGER
);


CREATE TABLE orders (
id SERIAL PRIMARY KEY,
detail_orders VARCHAR(50),
ref_product  INTEGER references product(id)
);

SELECT * FROM orders;

INSERT INTO users
(name, email)
VALUES
('Scott', 's@gmail.com'),
('Vic', 'v@gmail.com'),
('Jen', 'j@gmail.com');

INSERT INTO product
(name, price)
VALUES
('Bike', 10000),
('Jersey', 120),
('Helmet', 55);

INSERT INTO orders
(detail_orders, ref_product)
VALUES
('Bike and Jersey', 1),
('Helmet and Jersey', 2),
('Helmet and Bike', 3);

SELECT * FROM orders;
SELECT detail_orders
FROM orders
WHERE id = 1;

SELECT * FROM orders;

SELECT price FROM orders
JOIN product ON orders.ref_product = product.id
WHERE orders.id = 1;

ALTER TABLE orders
ADD COLUMN user_id INTEGER references users(id);

UPDATE orders
SET user_id = 3
WHERE id = 3

SELECT * FROM orders
WHERE id = 1

SELECT COUNT(*) FROM orders
WHERE id = 2

SELECT SUM(price)
FROM product;


SELECT count(price) FROM product
 WHERE id IN (1, 2, 3);