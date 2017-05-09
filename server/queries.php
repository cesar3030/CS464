<?php
require ("db_connection.php");

if ($_SERVER['REQUEST_METHOD'] == "GET"){
  if(isset($_GET['query'])){
    if($_GET['query'] == 1){
      $statement = $db->query("SELECT firstname, lastname FROM users WHERE email REGEXP '.*@apache.org'");
    }
    
  }
  else{
    $statement = $db->query("SELECT * FROM categories");
  }
  
  $statement->setFetchMode(PDO::FETCH_ASSOC);
  echo json_encode($statement->fetchAll());
}