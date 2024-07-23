<!--	Author:
		Date:
		File:	weatherStation.php
		Purpose: Weather exercise
-->

<html>
<head>
	<title>Weather Station</title>
	<link rel ="stylesheet" type="text/css" href="sample.css" />
</head>

<body>

<?php

	$weatherFile = fopen("weatherStation.txt", "r");

	$location1 = trim(fgets($weatherFile));
	$location2 = trim(fgets($weatherFile));

	fclose($weatherFile);

		list($location1, $conditions1, $temp1, $wind1) = explode(":", $location1);
		list($location2, $conditions2, $temp2, $wind2) = explode(":", $location2);	


			print("<h1>YOUR LOCAL WEATHER</h1>
			<table border = \"1\">
			<tr><th>LOCATION</th><th>CONDITIONS</th><th>TEMP (F)</th><th>WIND</th></tr>
			<tr><td>$location1</td><td>$conditions1</td><td>$temp1</td><td>$wind1</td></tr>
			<tr><td>$location2</td><td>$conditions2</td><td>$temp2</td><td>$wind2</td></tr>

			</table>");

?>
</body>
</html>