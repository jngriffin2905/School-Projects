<!DOCTYPE html>
<!--		Author:Jessica Griffin 	
		Date:02/16/2024	    
		File:		convert.php
		Purpose:	Convert kilometers to miles
-->
<html>
<head>
	<title>Conversions</title>
	<link rel ="stylesheet" type="text/css" href="mileage.css">
</head>
<body>
	<h1>Kilometers to Miles Conversion</h1>
	
	<?php
    $numKilometers = $_POST["answer"];
	$oneMile = .621371;

	$miles = $numKilometers * $oneMile;
	$miles =ceil($numKilometers * $oneMile);

            
			Print("<p>$numKilometers kilometers converts to $miles miles.</p>");	
            print("<p><a href = \"mileage-home.html\">Home</a>.</p>");	
	?>
</body>
</html>
