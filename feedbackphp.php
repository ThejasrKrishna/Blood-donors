<?php
$Name = filter_input(INPUT_POST, 'Name');
$Feedback = filter_input(INPUT_POST, 'Feedback');
if (!empty($Name)){
if (!empty($Feedback)){
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "bdo";
// Create connection
$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);


if (mysqli_connect_error()){
die('Connect Error ('. mysqli_connect_errno() .') '
. mysqli_connect_error());
}
else{
$sql = "INSERT INTO fb (Name,Feedback)
values ('$Name','$Feedback')";
if ($conn->query($sql)){
echo "New record is inserted sucessfully";
}
else{
echo "Error: ". $sql ."
". $conn->error;
}
$conn->close();
}
}
else{
echo "Feedback should not be empty";
die();
}
}
else{
echo "Name should not be empty";
die();
}
?>