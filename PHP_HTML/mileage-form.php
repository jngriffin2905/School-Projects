<!DOCTYPE html>
<!--		Author: 	
		Date:	    
		File:		mileage-form
		Purpose:	Mileage Form
-->
<html>
<head>
	<title>Mileage Form</title>
	<link rel ="stylesheet" type="text/css" href="mileage.css">
</head>
<body>
	<?php
	
	            
            $month = $_POST["month"];
            $days = $_POST["days"];
            $miles = $_POST["miles"];
            $lunchDays = $_POST["lunchDays"];
            $nights = $_POST["nights"];

            $mileagePayment = $miles * .54;
            $lunchPayment = $lunchDays * 10.50;
            $overnightPayment = $nights * 150.00;
            $total = $mileagePayment + $lunchPayment + $overnightPayment;

             
                print ("<h1>Reimbursement for $month</h1>");
                print ("<table>");
                print ("<tr><td>NUMBER OF TRAVEL DAYS:</td><td> $days</td></tr>");
                print ("<tr><td>NUMBER OF LUNCH DAYS:</td><td> $lunchDays</td></tr>");
                print ("<tr><td>NUMBER OF OVERNIGHTS:</td><td> $nights</td></tr>");                
                print ("<tr><td>TOTAL MILES:</td><td> $miles</td></tr>");                
		print ("<tr><td>MILEAGE REIMBURSEMENT: </td><td>$".number_format($mileagePayment,2)."</td></tr>");
		print ("<tr><td>LUNCH REIMBURSEMENT: </td><td>$".number_format($lunchPayment,2)."</td></tr>");
		print ("<tr><td>OVERNIGHT REIMBURSEMENT: </td><td>$".number_format($overnightPayment,2)."</td></tr>");
		print ("<tr><td>TOTAL REIMBURSEMENT: </td><td>$".number_format($total,2)."</td></tr>");	
                print ("</table>");
		
                print("<p><a href = \"mileage-home.html\">Home</a>.</p>");	
	?>
</body>
</html>
