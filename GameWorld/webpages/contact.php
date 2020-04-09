<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="description" content="GameWorld - Buy games for the best price">
	<link rel="stylesheet" type="text/css" href="../CSS/Style.css" />
	<link rel="icon" type="image/png" href="../img/Logo/favicon-16x16.png" sizes="16x16" />
	<title>GameWorld</title>
</head>
<body>
<?php
	include "../inc/nav.php";
?>
<div class="container">
  <form action="/action_page.php">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name..">

    <label for="country">Country</label>
    <select id="country" name="country">
      <option value="nederland">Nederland</option>
      <option value="belgië">België</option>
      <option value="duitsland">Duitsland</option>
    </select>

    <label for="subject">Subject</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>
</body>
<!--This is the information that you can see on the bottom of the page-->
<?php
include "../inc/footer.php";
?>
</html>