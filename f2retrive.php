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
<th>sl.no</th>
<th>Name</th>
<th>Feedback</th>
</tr>
<?php
	$connect=mysqli_connect("localhost","root","","bdo") or die("Connection Failed");
	$sqlget="SELECT * FROM fb";
	$sqldata=mysqli_query($connect,$sqlget);
	while($row = mysqli_fetch_array($sqldata)) {
		echo "<tr><td>";
		echo $row['slno'];
		echo "</td> <td>";
		echo $row['Name'];
		echo "</td><td>";
		echo $row['Feedback'];
		echo "</td><td>";
		echo "</td> </tr> ";
	}
	echo "</table>";
		
?>



</table>
</body>
</html>