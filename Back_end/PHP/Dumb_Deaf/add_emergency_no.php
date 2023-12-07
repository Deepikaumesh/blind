<?php 
$servername = 'localhost';
$username = 'root';
$password = '';
 $database = "dumb_deaf";

$connection = new mysqli($servername, $username, $password,$database);
    

if ($connection->connect_error) {
  die("Connection failed: " . $connection->connect_error);
}

            $connection->set_charset("utf8");
            
            
				//$id = $_POST['id'];
				$phone = $_POST["phone"];
				

	$connection->query("UPDATE   emergency SET phone='".$phone."'");




	



    	
	$result = array();
	$result['msg'] = "Successfully Edited..";
	echo json_encode($result);

?>



