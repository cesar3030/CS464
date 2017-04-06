-- SELECT queries

-- Select the firstname and lastname of user having an email with apache.org domain.
SELECT firstname, lastname FROM users WHERE email REGEXP '.*@apache.org'
-- Select the products that have been linked to a deleted category.
SELECT * FROM products WHERE category_name IN (SELECT category_name FROM categories WHERE deleted_at IS NOT NULL)
-- Select the email of user which have submited an order, using a 3 days delivery type to an address that have its id > 86.
SELECT DISTINCT o.email FROM items i
NATURAL JOIN orders o
NATURAL JOIN deliveries d
WHERE d.address_id > 86
AND d.type = '3 days';
-- Count the number of product of each category and display the result from the category with the most products to the one with the least products.
SELECT category_name, count(category_name) FROM products GROUP BY category_name ORDER BY count(category_name) DESC
-- Returns the list of products that have never been bought.
SELECT DISTINCT name FROM products where product_id NOT IN (SELECT DISTINCT product_id FROM items);


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

-- UPDATE queries

-- Update a category to set deleted_at to 10 weeks from now.
UPDATE categories SET deleted_at = CURRENT_TIMESTAMP() - INTERVAL 10 WEEK WHERE category_name = (SELECT category_name FROM (SELECT * FROM categories) as c LIMIT 1);

-- DELETE queries

-- Deletes categories that have deleted_at set more than 60 days ago.
DELETE FROM categories where TIMESTAMPDIFF(DAY, deleted_at, CURRENT_TIMESTAMP()) > 60;