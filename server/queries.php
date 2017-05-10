<?php
require ("db_connection.php");

if ($_SERVER['REQUEST_METHOD'] == "GET"){
  if(isset($_GET['query'])){
    if($_GET['query'] == 1){
      $statement = $db->query("SELECT firstname, lastname FROM users WHERE email REGEXP    	'.*@apache.org'");
    }
    elseif($_GET['query'] == 2){
      $statement = $db->query("SELECT CONCAT(lastname, ' ', firstname) AS 'Youngest User' FROM 	 users WHERE date_birth <= ALL(SELECT date_birth FROM users)");
    }
    elseif($_GET['query'] == 3){
      $statement = $db->query("SELECT product_id, price FROM products WHERE category_name IN 		(SELECT category_name FROM categories WHERE deleted_at IS NOT NULL)"); 
    }
    elseif($_GET['query'] == 4){
      $statement = $db->query("SELECT A.country, B.country, A.state FROM demographics A, 		demographics B WHERE A.country != B.country AND A.city = B.city");
    }
    elseif($_GET['query'] == 5){
      $statement = $db->query("SELECT DISTINCT o.email FROM orders o NATURAL JOIN items i 		NATURAL JOIN deliveries d WHERE d.type = '3 days' AND i.quantity = 1");
    }
    elseif($_GET['query'] == 6){
      $statement = $db->query("SELECT email FROM orders NATURAL JOIN items NATURAL JOIN products 		WHERE price >= ALL(SELECT price FROM products NATURAL JOIN items NATURAL JOIN orders)");
    }
    elseif($_GET['query'] == 7){
      $statement = $db->query("SELECT country AS 'countries listed' FROM ((SELECT country FROM companies) UNION (SELECT country FROM demographics) UNION (SELECT country FROM addresses)) A");
    }
    elseif($_GET['query'] == 8){
      $statement = $db->query("SELECT category_name, count(category_name) FROM products GROUP BY category_name ORDER BY count(category_name) DESC");
    }
    elseif($_GET['query'] == 9){
      $statement = $db->query("SELECT order_id, status, email, quantity FROM orders NATURAL JOIN items ORDER BY items.quantity DESC LIMIT 1000");
    }
    elseif($_GET['query'] == 10){
      $statement = $db->query("SELECT DISTINCT name FROM products where product_id NOT IN (SELECT DISTINCT product_id FROM items)");
    }
    elseif($_GET['query'] == 11){
      $statement = $db->query("SELECT company_name, count(product_id) 'Number of products' FROM companies A, products B WHERE A.company_id = B.company_id GROUP BY company_name HAVING count(product_id) >= 10");
    }   
  }
  else{
    $statement = $db->query("SELECT * FROM categories");
  }
  
  $statement->setFetchMode(PDO::FETCH_ASSOC);
  echo json_encode($statement->fetchAll());
}
