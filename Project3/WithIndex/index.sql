CREATE INDEX product_name_index
ON products(name);

CREATE INDEX item_index 
ON orders(item_id);

CREATE INDEX order_email_index 
ON orders(email);
