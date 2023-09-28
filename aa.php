<?php
	$connect=mysqli_connect("localhost","root","","bdo") or die("Connection Failed");
	if(!empty($_POST['submit']))
	{
		$Username=$_POST['Username'];
		$Password=$_POST['Password'];
		$query="select * from admin where Username='$Username' and Password='$Password'";
		$result=mysqli_query($connect,$query);
		$count=mysqli_num_rows($result);
		if($count>0)
		{
			echo"<a href='reg retrive.php'>registration details";
			echo"<br/><a href='f2retrive.php'>feedback details";
		}
		else
		{
			echo "Invalid username or passsword";
		}
	}
?>
