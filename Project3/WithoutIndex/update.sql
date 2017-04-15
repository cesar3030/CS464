
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



INSERT INTO companies(company_name, hq_address, date_creation, country) VALUES("new company", "central avenue", CURDATE(), (SELECT country FROM companies A WHERE A.date_creation <= ALL(SELECT B.date_creation FROM companies B)));


UPDATE categories SET deleted_at = CURRENT_TIMESTAMP() - INTERVAL 10 WEEK WHERE category_name = (SELECT category_name FROM (SELECT * FROM categories) as c LIMIT 1);


UPDATE items A SET A.quantity = (SELECT quantity_in_stock FROM products WHERE product_id = A.product_id) WHERE EXISTS(SELECT 1 FROM products WHERE A.product_id = product_id AND A.quantity > quantity_in_stock);


DELETE FROM categories where TIMESTAMPDIFF(DAY, deleted_at, CURRENT_TIMESTAMP()) > 60;


DELETE FROM deliveries WHERE TIMESTAMPDIFF(DAY, delivered_at, CURRENT_TIMESTAMP()) > 30;
