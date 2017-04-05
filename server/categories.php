<?php
require ("db_connection.php");

if ($_SERVER['REQUEST_METHOD'] == "GET"){
  if(isset($_GET['category_name'])){
    $statement = $db->query("SELECT * FROM categories WHERE category_name = '{$_GET['category_name']}'");
  }
  else{
    $statement = $db->query("SELECT * FROM categories");
  }
  
  $statement->setFetchMode(PDO::FETCH_ASSOC);
  echo json_encode($statement->fetchAll());
}

?>