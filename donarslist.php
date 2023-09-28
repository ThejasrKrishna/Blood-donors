<html>
<head>
<title>Table with database</title>
<style>
table {
border-collapse: collapse;
width: 100%;
color: #588c7e;
font-family: monospace;
font-size: 25px;
text-align: left;
}
th {
background-color: #588c7e;
color: white;
}
tr:nth-child(even) {background-color: #f2f2f2}
</style>
</head>
<body>
<table>
<tr>
<th>Name</th>
<th>Gender</th>
<th>Age</th>
<th>Mobile no.</th>
<th>Last donated date</th>
</tr>

<?php
	$connect=mysqli_connect("localhost","root","","bdo") or die("Connection Failed");
	if(isset($_POST['submit']))
	{
		$Bloodgroup=$_POST['Bloodgroup'];
		$City=$_POST['City'];
	$sqlget="SELECT * FROM bdo1 where Bloodgroup='$Bloodgroup'and City='$City'";
	$sqldata=mysqli_query($connect,$sqlget);
	while($row = mysqli_fetch_array($sqldata)) {
		echo "<tr><td>";
		echo $row['Name'];
		echo "</td> <td>";
		echo $row['Gender'];
		echo "</td><td>";
		echo $row['Age'];
		echo "</td><td>";
		echo $row['Mobileno'];
		echo "</td><td>";
		echo $row['Lastdonateddate'];
		echo "</td></tr>";
	}
	echo "</table>";
	}
?>
	
	
</table>
</body>
</html>