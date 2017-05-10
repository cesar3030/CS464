<?php
require ("db_connection.php");
$data = json_decode(file_get_contents('php://input'));

if ($_SERVER['REQUEST_METHOD'] == "GET"){
  if(isset($_GET['id'])){
    $statement = $db->query("SELECT * FROM companies WHERE company_id = '{$_GET['id']}'");
  }
  else{
    $statement = $db->query("SELECT * FROM companies ORDER BY company_id DESC");
  }
  
  $statement->setFetchMode(PDO::FETCH_ASSOC);
  echo json_encode($statement->fetchAll());
}
elseif($_SERVER['REQUEST_METHOD'] == "POST"){
  $sql = "INSERT INTO companies(company_name,hq_address,date_creation,country) VALUES ('{$data->company_name}','{$data->hq_address}','{$data->date_creation}','{$data->country}')"; //(:company_name,:hq_address,:date_creation,:country)//('{$_POST['company_name']}','{$_POST['hq_address']}','{$_POST['date_creation']}','{$_POST['country']}')
  $query = $db->prepare($sql);
  $query->execute(array(":category_name"=>$data->category_name,":hq_address"=>$data->hq_address,":date_creation"=>$data->date_creation,":country"=>$data->country));
  $result['id'] = $db->lastInsertId();
  echo json_encode($data);
}
elseif($_SERVER['REQUEST_METHOD'] == "PUT"){
  $sql = "UPDATE companies SET company_name = '{$data->company_name}', hq_address = '{$data->hq_address}', date_creation = '{$data->date_creation}', country = '{$data->country}' WHERE company_id = '{$data->company_id}'"; //(:company_name,:hq_address,:date_creation,:country)//('{$_POST['company_name']}','{$_POST['hq_address']}','{$_POST['date_creation']}','{$_POST['country']}')
  $query = $db->prepare($sql);
  $query->execute(array(":category_name"=>$data->category_name,":hq_address"=>$data->hq_address,":date_creation"=>$data->date_creation,":country"=>$data->country));
  $result['id'] = $db->lastInsertId();
  echo json_encode($data);
}

elseif($_SERVER['REQUEST_METHOD'] == "DELETE"){
  $sql = "DELETE FROM companies WHERE company_id = {$_GET['id']}"; //(:company_name,:hq_address,:date_creation,:country)//('{$_POST['company_name']}','{$_POST['hq_address']}','{$_POST['date_creation']}','{$_POST['country']}')
  $query = $db->prepare($sql);
  $query->execute(array(":category_name"=>$data->category_name,":hq_address"=>$data->hq_address,":date_creation"=>$data->date_creation,":country"=>$data->country));
  echo json_encode(array(":t"=>$_GET['id']));
}