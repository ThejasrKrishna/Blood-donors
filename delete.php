<?php
	$connect=mysqli_connect("localhost","root","","bdo") or die("Connection Failed");
	$slno=$_GET['slno'];
	$query="DELETE FROM bdo1 WHERE slno='$slno'";
	$data=mysqli_query($connect,$query);
	if($data)
	{
		echo "record deleted sucessfully";
	}
	else
	{
		echo "failed to delete record";
	}
?>