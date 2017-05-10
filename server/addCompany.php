<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Add a new company</title>
<style type="text/css">
.form{
  background: #cbe2c1;
   background: -webkit-linear-gradient(to right, #a1d3b0, #f6f1d3);
   background: -moz-linear-gradient(to right, #a1d3b0, #f6f1d3);
   background: linear-gradient(to right, #a1d3b0, #f6f1d3);
  margin: 20px 0 40px 0;
  padding: 20px 0 40px 0;
}
.add *{
  vertical-align: middle;
}
.form *{
  padding-bottom: 7px;
}

.button{
  padding-left: 600px;
  text-align: center;
}
</style>
</head>
<body>
<h3>Add a new company</h3>
<div class="form">
<?php
required("db_connection.php");
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (!empty($_POST["company_name"])) {
    $name = test_input($_POST["company_name"]);
    }
  
  if (!empty($_POST["hq_address"])) {
    $add = test_input($_POST["hq_address"]);
  }
  
  if (!empty($_POST["date_creation"])) {
    $date = $_POST["date_creation"];
  }
   
  if (!empty($_POST["country"])) {
    $country = test_input($_POST["country"]);
  }
  
   if(!empty($name) && !empty($add) && !empty($date) && !empty($country)){
     
try{
      $db->query("insert into companies(comapny_name, hq_address, date_creation, country) values('".$name."', '".$add."', '".$date."', '".$country."')");
    header("somelocation");
       
     }catch(PDOException $e){
       echo $e.getMessage();
     }
     
   }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}
?>
<h2>Please fill the form</h2>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
  <span class="add">
  <label>Company name:</label> &nbsp<input type="text" name="company_name">
  </span>
  <br><br>
  <span class="add">
  <label>Address:</label> &nbsp<input type="text" name="hq_address">
  </span>
  <br><br>
  <span class="add">
  <label>Created on:</label> &nbsp&nbsp&nbsp<input type="date" name="date_creation">
  </span>
  <br><br>
  <span class="add">
  <label>Country:</label>&nbsp&nbsp&nbsp<input type="text" name="country">
  </span>
  <br><br>
  <br><br><span class="button">
  <input type="submit" name="submit" value="Submit"></span>
</form>
</div>
</body>
</html>
