<!DOCTYPE html>
<!--Author:
	Date:
	File:	game-intro.php
	Purpose:Chapter 5 Exercise

-->


<html>
<head>
	<title>game-intro</title>
	<link rel ="stylesheet" type="text/css" href="sample.css">
</head>
<body>

	<?php
	$charName = $_POST["charName"];
	$charType = $_POST["charType"];
	$numHealthTokens = $_POST["healthTokens"];
	$numExpTokens = $_POST["expTokens"];
	$numSupplyTokens = $_POST["supplyTokens"];
	  
	$goldCostH = $numHealthTokens/10;
	$goldCostE = $numExpTokens/2;
	$goldCostS = $numSupplyTokens/25;
	$totalGoldCost = $goldCostH + $goldCostE + $goldCostS; 
	
	
	print("<p><strong>You have created $charName the $charType!</strong></p>");
	print("<p>You have purchased $numHealthTokens Health Tokens.</p>");
	print("<p>You have purchased $numExpTokens Experience Tokens.</p>");
	print("<p>You have purchased $numSupplyTokens Supply Tokens.</p>");
	print("<p>Your total cost of Gold Pieces is $totalGoldCost.</p>");
	
?>

	
</body> 
</html>
 