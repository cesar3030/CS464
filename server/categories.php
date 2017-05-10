<?php
require ("db_connection.php");
$data = json_decode(file_get_contents('php://input'));

if ($_SERVER['REQUEST_METHOD'] == "GET"){
  if(isset($_GET['category_name'])){
    $statement = $db->query("SELECT * FROM categories WHERE category_name = '{$_GET['category_name']}'");
  }
  else{
    $statement = $db->query("SELECT * FROM categories ORDER BY created_at DESC");
  }
  
  $statement->setFetchMode(PDO::FETCH_ASSOC);
  echo json_encode($statement->fetchAll());
}
elseif($_SERVER['REQUEST_METHOD'] == "POST"){
  $sql = "INSERT INTO categories VALUES (:category_name)";
  $query = $db->prepare($sql);
  $query->execute(array(":category_name"=>$data->category_name));
  $result['id'] = $db->lastInsertId();
  echo json_encode($result);
}


?>