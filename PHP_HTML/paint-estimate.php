<!DOCTYPE html>
<!--Author:
	Date:
	File:	paint-estimate.php
	Purpose:Chapter 5 Exercise

-->


<html>
<head>
	<title>King Painting</title>
	<link rel ="stylesheet" type="text/css" href="sample.css">
</head>
<body>

	<h1>King Painting: Paint Estimate</h1>

	<?php
	$dollarsPerGallon = 17.00;
	$laborCost = 25.00;

	$roomLength = $_POST['roomLength'];
	$roomWidth = $_POST['room_Width'];
	$roomHeight = $_POST['room_Height'];
	
	$areaLongWall = $roomLength * $roomHeight;
	$areaWideWall = $roomWidth * $roomHeight;
	$areaCeiling = $roomLength * $roomHeight;
	$totalArea = $areaLongWall * 2 + $areaWideWall * 2 + $areaCeiling;
	$numGallons = $totalArea/400;
	$coveragePerGallon = 400;
	$coveragePerHour = 200;
	$hoursOfLabor = $totalArea/200;
	$paintCost = $totalArea/$coveragePerGallon * $dollarsPerGallon ;
	$laborCost = $totalArea/$coveragePerHour * $laborCost;
	$totalCost = $paintCost + $laborCost;
	$numGallons= ceil($numGallons/$coveragePerGallon);
	$hoursOfLabor = ceil($totalArea/200);
	

	
	print("<p>Your length is $roomLength feet. Your width is $roomWidth feet. Your height is $roomHeight feet.</p>");
	print("<p>Your total area is $totalArea sq feet.</p>");
	print("<p>Your total hours of labor are $hoursOfLabor.</p>");
	print("<p>The number of gallons needed is $numGallons.</p>"); 
	print("<p>Your paint cost is $$paintCost. Your labor cost is $$laborCost.</p>");
	print("<p>Your total cost is $$totalCost.</p>");
	


	?>

</body>
</html>
