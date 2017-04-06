-- SELECT queries

-- Select the firstname and lastname of women without default address and
SELECT firstname, lastname FROM users WHERE default_address_id IS NULL AND sex = 'F'; 
-- Select the products that have been linked to a deleted category
SELECT * FROM products WHERE category_name IN (SELECT category_name FROM categories WHERE deleted_at IS NOT NULL)


-- INSERT queries

-- DELETE queries

-- UPDATE queries

