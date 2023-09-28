 <html>
<head>
<title>Table with database</title>
<style>
table{
	font-size:25px;
	border-style:inset;
	border-color:coral;
	color:#4eafd9;
}
.th
{
color:black;
}
body
{
background-image:url("qw14.jpg");
}

</style>
</head>
<body>
<table border="5">
<tr class="th">
<th>sl.no</th>
<th>Email id</th>
<th>Name</th>
<th>Country</th>
<th>State</th>
<th>City</th>
<th>Location</th>
<th>Pincode</th>
<th>Bloodgroup</th>
<th>Age</th>
<th>Last donated date</th>
<th>Gender</th>
<th>Mobile no</th>
<th>Operation</th>
</tr>
<?php
	$connect=mysqli_connect("localhost","root","","bdo") or die("Connection Failed");
	$sqlget="SELECT * FROM bdo1";
	$sqldata=mysqli_query($connect,$sqlget);
	while($row = mysqli_fetch_array($sqldata)) {
		echo "<tr><td>";
		echo $row['slno'];
		echo "</td> <td>";
		echo $row['Email'];
		echo "</td><td>";
		echo $row['Name'];
		echo "</td><td>";
		echo $row['Country'];
		echo "</td><td>";
		echo $row['State'];
		echo "</td><td>";
		echo $row['City'];
		echo "</td><td>";
		echo $row['Location'];
		echo "</td><td>";
		echo $row['Pincode'];
		echo "</td><td>";
		echo $row['Bloodgroup'];
		echo "</td><td>";
		echo $row['Age'];
		echo "</td><td>";
		echo $row['Lastdonateddate'];
		echo "</td><td>";
		echo $row['Gender'];
		echo "</td><td>";
		echo $row['Mobileno'];
		echo "</td><td>";
	    echo "<a href='delete.php ?slno=$row[slno]'>delete";
		echo "</td> </tr> ";
	}
	echo "</table>";
		
?>



</table>
</body>
</html>