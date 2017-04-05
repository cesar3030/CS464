<?php
require ("db_connection.php");

if ($_SERVER['REQUEST_METHOD'] == "GET"){
  if(isset($_GET['email'])){
    $statement = $db->query("SELECT * FROM users WHERE email = '{$_GET['email']}'");
  }
  else{
    $statement = $db->query("SELECT * FROM users");
  }
  
  $statement->setFetchMode(PDO::FETCH_ASSOC);
  echo json_encode($statement->fetchAll());
}

?>