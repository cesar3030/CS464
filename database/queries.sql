-- SELECT queries

-- Select the firstname and lastname of user having an email with apache.org domain
SELECT firstname, lastname FROM users WHERE email REGEXP '.*@apache.org'
-- Select the products that have been linked to a deleted category
SELECT * FROM products WHERE category_name IN (SELECT category_name FROM categories WHERE deleted_at IS NOT NULL)
-- Select the email of user which have submited an order, using a 3 days delivery type to an address that have its id > 86.
SELECT distinct o.email FROM items i
NATURAL JOIN orders o
NATURAL JOIN deliveries d
WHERE d.address_id > 86
AND d.type = '3 days';



-- INSERT queries

-- DELETE queries

-- UPDATE queries

