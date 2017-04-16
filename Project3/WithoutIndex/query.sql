
SELECT firstname, lastname FROM users WHERE email REGEXP '.*@apache.org';

SELECT CONCAT(lastname, " ", firstname) AS "Youngest User" FROM users WHERE date_birth <= ALL(SELECT date_birth FROM users); 

SELECT product_id, price FROM products WHERE category_name IN (SELECT category_name FROM categories WHERE deleted_at IS NOT NULL);

SELECT A.country, B.country, A.state FROM demographics A, demographics B WHERE A.country != B.country AND A.city = B.city;

SELECT DISTINCT o.email FROM orders o
NATURAL JOIN items i
NATURAL JOIN deliveries d
WHERE d.type = '3 days'
AND i.quantity = 1;

SELECT email FROM orders NATURAL JOIN items NATURAL JOIN products WHERE price >= ALL(SELECT price FROM products NATURAL JOIN items NATURAL JOIN orders);

SELECT country AS "countries listed" FROM ((SELECT country FROM companies) UNION (SELECT country FROM demographics) UNION (SELECT country FROM addresses)) A;

SELECT category_name, count(category_name) FROM products GROUP BY category_name ORDER BY count(category_name) DESC;

SELECT order_id, status, email, quantity FROM orders NATURAL JOIN items ORDER BY items.quantity DESC;

SELECT DISTINCT name FROM products where product_id NOT IN (SELECT DISTINCT product_id FROM items);

SELECT company_name, count(product_id) "Number of products" FROM companies A, products B WHERE A.company_id = B.company_id GROUP BY company_name HAVING count(product_id) >= 10;
