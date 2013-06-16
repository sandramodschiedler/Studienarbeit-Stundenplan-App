<!DOCTYPE html>
<?php 
require("php/db.php");
?>  
<html> 
<head> 
	 <title>Stundenplan</title> 
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/themes/theme-haw.css" />
	<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>
</head> 
<body> 

<div data-role="dialog">
	<div data-role="header">
		<h1>Fertig!</h1>
	</div>

	<div data-role="content">
		<p>Dein individueller Stundenplan wurde gespeichert.<br>
		Beim nächsten Öffnen der App wird dir sofort deine aktuelle Vorlesung angezeigt.</p>
		<a href="auswertung.php" data-role="button" data-inline="true">Alles klar!</a>
	</div>
</div>
</body>
</html>