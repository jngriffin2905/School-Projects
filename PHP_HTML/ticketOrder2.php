<!--	Author:
		Date:
		File:	ticketOrder2.php
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

		if ($numTickets < 1) 
		{print("<p>YOU MUST ORDER AT LEAST ONE TICKET!");
			$linkText = "Return to Order Form"; 
			$href = "ticketOrder2.html"; 
			print("<p><a href='$href'>$linkText</a></p>");
		}
		elseif ($numTickets > 10)
		{print("<p>YOU CAN NOT ORDER MORE THAN 10 TICKETS!");
		$linkText = "Return to Order Form"; 
		$href = "ticketOrder2.html"; 
		print("<p><a href='$href'>$linkText</a></p>");}
	else
	{
		
		if ($ticketType == 'STANDARD')
		$ticketCost = 30.00;

		elseif ($ticketType == 'PREMIUM')
		$ticketCost = 60.00;

		$totalCost = $numTickets * $ticketCost; 
	
	
		print("<p>You ordered $numTickets $ticketType tickets.</p>");
		print("<p>Your total cost will be $ ".number_format($totalCost, 2)."</p>");
		print("<p> Pick up your tickets at the ticket office before the show.");

	}

	?>

</body>
</html>

