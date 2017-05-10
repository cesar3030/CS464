<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Add a new Demograph</title>
<style type="text/css">
.form{
  background: #cbe2c1;
   background: -webkit-linear-gradient(to right, #a1d3b0, #f6f1d3);
   background: -moz-linear-gradient(to right, #a1d3b0, #f6f1d3);
   background: linear-gradient(to right, #a1d3b0, #f6f1d3);
  margin: 20px 0 40px 0;
  padding: 20px 0 40px 0;
}
.error{
  color:red;
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
<h3>Add a new Demographic Info</h3>
<div class="form">
<?php
required("db_connection.php");
$cityErr = $stateErr = $countryErr = $ziprErr = "";
$city = $state = $country = $zip = "";
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["city"])) {
     $cityErr = "City required";
   }else{
    $city1 = test_input($_POST["city"]);
    if(!preg_match("/^[a-zA-Z ]*$/",$city1)){
       $cityErr = "Only letters and white spaces are allowed.";
     }else{
	$city = $city1;		
   }
   if (empty($_POST["state"])) {
     $stateErr = "State required";
   }else{
    $state1 = test_input($_POST["state"]);
    if(!preg_match("/^[a-zA-Z ]*$/",$state1)){
       $stateErr = "Only letters and white spaces are allowed.";
     }else{
	$state = $state1;		
   }
   if (empty($_POST["country"])) {
     $countryErr = "Country required";
   }else{
    $country1 = test_input($_POST["country"]);
    if(!preg_match("/^[a-zA-Z ]*$/",$country1)){
       $countryErr = "Only letters and white spaces are allowed.";
     }else{
	$country = $country1;		
   }
   if (empty($_POST["zip"])) {
     $zipErr = "zipcode required";
   }else{
    $zip1 = test_input($_POST["zip"]);
    if(!ctype_digit($zip1)){
       $zipErr = "Only digits are allowed.";
     }else{
	$zip = (int)$zip1;		
   }
  
   if(!empty($city) && !empty($state) && !empty($zip) && !empty($country)){
     
try{
      $db->query("insert into demographics(zip, country, state, city) values($zip, '".$country."', '".$state."', '".$city."')");
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
  <label>City:</label> &nbsp<input type="text" name="city">
  <span class="error">* <?php echo $cityErr;?></span></span>
  <br><br>
  <span class="add">
  <label>State:</label> &nbsp<input type="text" name="state">
  <span class="error">* <?php echo $stateErr;?></span></span>
  <br><br>
  <span class="add">
  <label>Country:</label> &nbsp&nbsp&nbsp<input type="text" name="country">
  <span class="error">* <?php echo $countryErr;?></span></span>
  <br><br>
  <span class="add">
  <label>zip:</label>&nbsp&nbsp&nbsp<input type="text" name="zip">
  <span class="error">* <?php echo $zipErr;?></span></span>
  <br><br>
  <br><br><span class="button">
  <input type="submit" name="submit" value="Submit"></span>
</form>
</div>
</body>
</html>
