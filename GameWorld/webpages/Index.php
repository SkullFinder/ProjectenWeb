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
	<div class="home">
	<!--This is the navigation bar-->
			<?php
			include "../inc/nav.php";
			?>
	<!--This are the buttons on de webpage-->
		<div class="banner"><img src="../img/Background/Console-wars-2.jpg" /><h4 class="tekst-banner">Welkom to GameWorld! The webshop for every gamer.</h4></div>
		<div class="button1"><a href="games.php?console=1">Playstation 2</a></div>
		<div class="button2"><a href="games.php?console=2">Xbox 360</a></div>
		<div class="button3"><a href="games.php?console=3">Pc</a></div>
	</div>
</body>
<!--This is the information that you can see on the bottom of the page-->
<?php
include "../inc/footer.php";
?>
</html>