-- query.php?query=1
-- /users/query/1
SELECT firstname, lastname FROM users WHERE email REGEXP '.*@apache.org';

-- query.php?query=2
-- /users/query/2
SELECT CONCAT(lastname, " ", firstname) AS "Youngest User" FROM users WHERE date_birth <= ALL(SELECT date_birth FROM users); 

-- query.php?query=3
-- /products/query/3
SELECT product_id, price FROM products WHERE category_name IN (SELECT category_name FROM categories WHERE deleted_at IS NOT NULL);

-- query.php?query=4
-- /demographics/query/4
SELECT A.country, B.country, A.state FROM demographics A, demographics B WHERE A.country != B.country AND A.city = B.city;

-- query.php?query=5
-- /orders/query/5
SELECT DISTINCT o.email FROM orders o
NATURAL JOIN items i
NATURAL JOIN deliveries d
WHERE d.type = '3 days'
AND i.quantity = 1;

-- query.php?query=6
-- /orders/query/6
SELECT email FROM orders NATURAL JOIN items NATURAL JOIN products WHERE price >= ALL(SELECT price FROM products NATURAL JOIN items NATURAL JOIN orders);

-- query.php?query=7
-- /demographics/query/7
SELECT country AS "countries listed" FROM ((SELECT country FROM companies) UNION (SELECT country FROM demographics) UNION (SELECT country FROM addresses)) A;

-- query.php?query=8
-- /products/query/8
SELECT category_name, count(category_name) FROM products GROUP BY category_name ORDER BY count(category_name) DESC;

-- query.php?query=9
-- /orders/query/3
SELECT order_id, status, email, quantity FROM orders NATURAL JOIN items ORDER BY items.quantity DESC;

-- query.php?query=10
-- /products/query/10
SELECT DISTINCT name FROM products where product_id NOT IN (SELECT DISTINCT product_id FROM items);

-- query.php?query=11
-- /companies/query/11
SELECT company_name, count(product_id) "Number of products" FROM companies A, products B WHERE A.company_id = B.company_id GROUP BY company_name HAVING count(product_id) >= 10;
