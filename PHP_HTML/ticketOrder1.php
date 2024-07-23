<!--	Author:
		Date:
		File:	ticketOrder1.php
		Purpose: Exam exercise
-->

<html>
<head>
	<title>Performance</title>
	<link rel ="stylesheet" type="text/css" href="sample.css" />
</head>

<body>

	<?php
		print ("<h1>Ticket Purchase</h1>");

		$numTickets = $_POST['numTickets'];
		$ticketType = $_POST['ticketType'];
		
		if ($ticketType == 'STANDARD')
		$ticketCost = 30.00;

		elseif ($ticketType == 'PREMIUM')
		$ticketCost = 60.00;

		$totalCost = $numTickets * $ticketCost; 
	
	
		print("<p>You ordered $numTickets $ticketType tickets.</p>");
		print("<p>Your total cost will be $ ".number_format($totalCost, 2)."</p>");
		print("<p> Pick up your tickets at the ticket office before the show.");
	
	
	?>

</body>
</html>

