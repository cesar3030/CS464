
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
