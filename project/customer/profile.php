<?php
require "head.php";
$idcust = $_SESSION['idcust'];
$sql = "SELECT * FROM customer WHERE idcust = $idcust";
$row = $conn->query($sql)->fetch_object();
?>
<html><!--open html--><!--tag for comment-->
	<head><!--open head-->
		<title>Profile</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="../nav.css">
	</head><!--close head-->
    
	<body> <!--open body--> <!--bgcolor for background color --> <!--priority: 1. Background 2.bgcolor-->
    <center>
    <font face="arial" size="70"><b>Your Profile</font></b>
    <table border="0">
	<tr>
        <td><font><b><font>NAME</b></font></td>
        <td>:<font><?php echo $row->username;?></font></td><br>
    </tr>
	<tr>
        <td><font><b><font>ADDRESS</b></font></td>
        <td>:<font><?php echo $row->address;?></font></td><br>
    </tr>
    <tr>
        <td><font><b><font>PHONE NO</b></font></td>
        <td>:<font><?php echo $row->phoneno;?></font></td><br>
    </tr>
    <tr>
        <td><font><b><font>EMAIL</b></font></td>
        <td>:<font><?php echo $row->email;?></font></td><br>
    </tr>
	</table>
    </center>
    <footer>
		<div>
			Copyright © 2018 - 2020 LalaBeauty, All right reserved.
		</div>	
	</footer>
	</body>
</html>
