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
