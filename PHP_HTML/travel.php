<!DOCTYPE html>
<!--Author:
	Date:
	File:	travel.php
	Purpose:Chapter 5 Exercise

-->


<html>
<head>
	<title>Travel</title>
	<link rel ="stylesheet" type="text/css" href="sample.css">
</head>
<body>

	<h1>Travel to Rome</h1>

	<?php

 	$numTravelers =$_POST["numTravelers"];
 	$numNights = $_POST["numNights"]; 
	$airlinePerPerson = 875.00;
	$hotelCostPerNight = 110.00;

	$costAirline = $airlinePerPerson * $numTravelers;
	$costHotel = $hotelCostPerNight * $numNights;
	$totalCost = $costAirline + $costHotel;

	print("<p>You have $numTravelers travelers.</p>");
	print("<p>You are staying $numNights nights.</p>");
	print("<p>Your air line cost is $$costAirline.</p>");
	print("<p>Your hotel cost is $$costHotel.</p>");
	print ("<p>Your total cost is $$totalCost.</p>");



	?>

</body>
</html>
