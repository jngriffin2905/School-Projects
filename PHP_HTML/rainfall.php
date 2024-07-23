<!--	Author:
		Date:
		File:	rainfall.php
		Purpose: Weather exercise
-->

<html>
<head>
	<title>Weekly Rainfall</title>
	<link rel ="stylesheet" type="text/css" href="sample.css" />
</head>

<body>
	<h1>Weekly Rainfall</h1>

<?php
 
 $rainfallFile = fopen("rainfall.txt", "r");

	$rainfallOne = trim(fgets($rainfallFile));
	$rainfallTwo = trim(fgets($rainfallFile));
	$rainfallThree = trim(fgets($rainfallFile));
	$rainfallFour = trim(fgets($rainfallFile));
	$rainfallFive = trim(fgets($rainfallFile));
	$rainfallSix = trim(fgets($rainfallFile));
	$rainfallSeven = trim(fgets($rainfallFile));

	fclose($rainfallFile);

	$totalRainFall = $rainfallOne + $rainfallTwo + $rainfallThree + $rainfallFour +$rainfallFive + $rainfallSix + $rainfallSeven;

	print("<p>TOTAL RAINFALL THIS WEEK: ".number_format($totalRainFall,2)." inches.</p>");

	if ($totalRainFall > 3)
	print("<p><h2>WARNING!</h2> WARNING! Due to heavy rainfall this week, flooding may occur in low-lying areas. Be cautious when driving through standing water.")




?>
</body>
</html>