<?php
require '../conn.php';
$idcust = $_SESSION['idcust'];
$sql = "SELECT * FROM customer WHERE idcust = $idcust";
$row = $conn->query($sql)->fetch_object();
?>
	<ul>
    	<li><img src ="logo.jpeg" width="58%" height="35%"></li>
        <li><a href="profile.php"><b>PROFILE</b></a><li>
		<li><a href="utama.php"><b>HOME</b></a><li>
  		<li><a href="product.php"><b>COLLECTION</b></a></li>
  		<li><a href="order.php"><b>ORDER FORM</b></a></li>
  		<li><a href="findus.php"><b>FIND US</b></a></li>
	</ul><br>
    <font><b>Customer Name :</b></font>
    <font><?php echo $row->username;?></font><br>