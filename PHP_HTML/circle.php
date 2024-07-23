<!--Author: JESSICA GRIFFIN
  Date:     January 16th, 2023
  File:     circle.php
  Purpose:  PHP Practice
-->
<html>
<head> 
  <title>First PHP Example</title>
</head>
<body>
  <h1>Circle Calculation</h1>
  <?php
    $radius = $_POST['radius'];
    $area = pi() *pow ($radius, 2);
    $circumference = 2 * pi() * $radius;
    print("<p>A circle with a radius of $radius has an area of $area and a circumference of $circumference. </p>");
  ?>
  <p><a href="circle.html">Calculate another circle?</a></p>
</body>       
</html>