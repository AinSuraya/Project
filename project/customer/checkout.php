<?php 
require '../conn.php';
require 'item.php';
// Save a new order
$sql1 = 'INSERT INTO orders (name, datecreation, status, username) VALUES ("New Order","'.date('Y-m-d').'","Active","Ainnur Najwa Binti Zainol")';
mysqli_query($conn, $sql1);
$ordersid = mysqli_insert_id($conn);

// Save a orders detail for new order
if (isset ($_SESSION ['cart'])) {
	$cart = unserialize(serialize($_SESSION['cart'])); // Set $ cart as array, serialize () converts string to array
		for($i=0; $i<count($cart);$i++) {
			$sql2 = 'INSERT INTO ordersdetail (productid, orderid, price, quantity) VALUES ('.$cart[$i]->id.', '.$ordersid.', '.$cart[$i]->price.', '.$cart[$i]->quantity.')';
			mysqli_query($conn, $sql2);
	}
}
// Clear all products in the cart
unset($_SESSION['cart']);
?>
<html>
<head>
    <title>Cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../nav.css">
</head>
<body>  
<center><h2>Thanks for buying products. Click <a href="index.php">here</a> to continue purchasing products.</h2></center>
</body>
</html>