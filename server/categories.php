<?php
require ("config.php");
try{
  $db = new PDO("mysql:host=".DB_HOST.";dbname=".DB_DATABASE, DB_USER, DB_PASSWORD);
} catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}

if ($_SERVER['REQUEST_METHOD'] == "GET"){
  if(isset($_GET['category_name'])){
    $statement = $db->query("SELECT * FROM categories WHERE category_name = '{$_GET['category_name']}'");
  }
  else{
    $statement = $db->query("SELECT * FROM categories");
  }
  
  $statement->setFetchMode(PDO::FETCH_ASSOC);
  echo json_encode($statement->fetchAll());
  // $test = array('a' => $_GET['id']);
  // echo json_encode($test);

}
?>