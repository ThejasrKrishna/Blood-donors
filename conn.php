<?php
	$Email = $_POST['Email'];
	$Name = $_POST['Name'];
	$Country = $_POST['Country'];
	$State = $_POST['State'];
	$City = $_POST['City'];
	$Location = $_POST['Location'];
	$Pincode = $_POST['Pincode'];
	$Bloodgroup = $_POST['Bloodgroup'];
	$Age = $_POST['Age'];
	$Lastdonateddate = $_POST['Lastdonateddate'];
	$Gender = $_POST['Gender'];
	$Mobileno = $_POST['Mobileno'];
	// Database connection
	$conn = new mysqli('localhost','root','','bdo');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
	$stmt = $conn->prepare("insert into bdo1(Email, Name, Country, State, City, Location,Pincode,Bloodgroup,Age,Lastdonateddate,Gender,Mobileno) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		$stmt->bind_param("ssssssisissi", $Email, $Name, $Country, $State, $City, $Location,$Pincode,$Bloodgroup,$Age,$Lastdonateddate,$Gender,$Mobileno);
		$execval = $stmt->execute();
		echo $execval;
		echo "registraion successful...";
		$stmt->close();
		$conn->close();
	}
?>
	
