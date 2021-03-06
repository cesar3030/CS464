-- SELECT queries

-- Select the firstname and lastname of user having an email with apache.org domain.
SELECT firstname, lastname FROM users WHERE email REGEXP '.*@apache.org';
-- Find the youngest user
SELECT CONCAT(lastname, " ", firstname) AS "Youngest User" FROM users WHERE date_birth <= ALL(SELECT date_birth FROM users); 
-- Select the products that have been linked to a deleted category.
SELECT * FROM products WHERE category_name IN (SELECT category_name FROM categories WHERE deleted_at IS NOT NULL);
-- Find those countries that are sharing the city names
SELECT A.country, B.country, A.state FROM demographics A, demographics B WHERE A.country != B.country AND A.city = B.city;
-- Select the email of user which have submited an order, using a 3 days delivery type to an address that have its id > 86.
SELECT DISTINCT o.email FROM orders o
NATURAL JOIN items i
NATURAL JOIN deliveries d
WHERE d.type = '3 days'
AND i.quantity = 1;
-- FIND the email of the user(s) who bought the most expensive product.
SELECT email FROM orders NATURAL JOIN items NATURAL JOIN products WHERE price >= ALL(SELECT price FROM products NATURAL JOIN items NATURAL JOIN orders);
--Select all the countries listed in the database.
SELECT country AS "countries listed" FROM ((SELECT country FROM companies) UNION (SELECT country FROM demographics)) A;
-- Count the number of product of each category and display the result from the category with the most products to the one with the least products.
SELECT category_name, count(category_name) FROM products GROUP BY category_name ORDER BY count(category_name) DESC;
--Sort the orders based on the quantity of the items, from large to small.
SELECT * FROM orders NATURAL JOIN items ORDER BY items.quantity DESC;
-- Returns the list of products that have never been bought.
SELECT DISTINCT name FROM products where product_id NOT IN (SELECT DISTINCT product_id FROM items);
--Find the companies that sell a minimum of 10 products
SELECT company_name, count(product_id) "Number of products" FROM companies A, products B WHERE A.company_id = B.company_id GROUP BY company_name HAVING count(product_id) >= 10;

-- INSERT queries

-- Insert a user with the email address UNM_CS@unm.edu, Its lastname is the least found in the DB, its firstname is the most found in the DB, its date of birth is the same as the oldest one in the DB and the sex is the least found in the DB.
INSERT INTO users (email, phone_number, lastname, firstname, date_birth, type, created_at, sex, password)
VALUES (
  CONCAT("UNM","_","CS","@unm.edu" ),
  '227-(216)348-9999',
  (SELECT lastname FROM (SELECT * FROM users) AS u group by lastname order by count(lastname) ASC LIMIT 1),
  (SELECT firstname FROM (SELECT * FROM users) AS u group by firstname order by count(firstname) DESC LIMIT 1),
  (SELECT date_birth FROM (SELECT * FROM users) AS u order by date_birth ASC LIMIT 1),
  'client',
  NOW(),
  (SELECT sex FROM (SELECT * FROM users) AS u group by sex order by count(sex) ASC LIMIT 1),
  MD5('not_safe_password')
);

-- Inserting a new company into the companies relation with the same country as the oldest company in the database.

INSERT INTO companies(company_name, hq_address, date_creation, country) VALUES("new company", "central avenue", CURDATE(), (SELECT country FROM companies A WHERE A.date_creation <= ALL(SELECT B.date_creation FROM companies B)));


-- UPDATE queries

-- Update a category to set deleted_at to 10 weeks from now.
UPDATE categories SET deleted_at = CURRENT_TIMESTAMP() - INTERVAL 10 WEEK WHERE category_name = (SELECT category_name FROM (SELECT * FROM categories) as c LIMIT 1);

-- update an entry in the items if quantity is exceeding the qunatity_in_stock.
UPDATE items A SET qunatity = (SELECT qunatity_in_stock FROM products WHERE product_id = A.product_id) WHERE EXISTS(SELECT 1 FROM products WHERE A.product_id = product_id AND A.quantity > quantity_in_stock);

-- DELETE queries

-- Deletes categories that have deleted_at set more than 60 days ago.
DELETE FROM categories where TIMESTAMPDIFF(DAY, deleted_at, CURRENT_TIMESTAMP()) > 60;

-- Delete a deliveries entry if the delivered_at is more than 30 days ago.
DELETE FROM deliveries WHERE TIMESTAMPDIFF(DAY, delivered_at, CURRENT_TIMESTAMP()) > 30;

-- INDEXES
CREATE INDEX product_name_index
ON products (name);

CREATE INDEX item_index ON orders(item_id);


