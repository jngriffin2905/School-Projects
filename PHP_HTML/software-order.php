<!DOCTYPE html>
<!--Author:
	Date:
	File:	software-order.php
	Purpose:Chapter 5 Exercise

-->


<html>
<head>
	<title>SaveTheWorld Software</title>
	<link rel ="stylesheet" type="text/css" href="sample.css">
</head>
<body>

	<h1>Your Order</h1>

	<?php
	
	$numCopies = $_POST["numCopies"];
	$os = $_POST["os"];
	$dollarsPerCopy =35;
	$salesTax = .075;
	$shippingAndHandling = 1.25;

	$subTotal = $dollarsPerCopy * $numCopies;
	$tax =$salesTax * $subTotal;
	$shippingAndHandlingCost = $shippingAndHandling * $numCopies;
	$totalCost = $subTotal +$tax + $shippingAndHandling;

	print("<p>Your number of copies are $numCopies</p>");
	print("<p>Your OS is $os</p>");
	print("<p>Your subtotal is $subTotal</p>");
	print("<p>Your tax is $tax</P>");
	print("<p>Your shipping and handling cost is $shippingAndHandlingCost</p>");
	print("<p>Your total cost is $totalCost </p>");



	?>

</body>
</html>
