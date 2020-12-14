<?php
require 'head.php';
$result = mysqli_query($conn, 'select * from product');
?>

<html>
<head>
    <title>Order Form</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../nav.css">
</head>
<body>  
	<br>
    <center>
	<form method="post">
	<table cellpading="2" cellspacing="2" border="0">
    <tr>
        <th>Image</th>
        <th>Code</th>
        <th>Name</th>
		<th>Price (RM)</th>
        <th>Buy</th>
    </tr>
    <?php while($product = mysqli_fetch_object($result)){ ?>
    <tr>
        <td><img src="<?php echo $product->image; ?>" width="100px" height="100px"/></td>
        <td><?php echo $product->idproduct; ?></td>
        <td><?php echo $product->productname; ?></td>
		<td><?php echo $product->price; ?></td>
        <td><a href="cart.php?idproduct=<?php echo $product->idproduct; ?> &action=add">Order Now</a></td>
    </tr>
    <?php
    }
    ?>
	</table>
</form></center>
	<footer>
		<div>
			Copyright © 2018 - 2020 LalaBeauty, All right reserved.
		</div>	
	</footer>
	</body>
</html>