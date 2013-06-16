<!DOCTYPE html>
<html> 
<head> 
	 <title>Stundenplan</title> 
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.css" />
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/themes/stp-eckig.min.css" />
	<script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.2.0/jquery.mobile-1.2.0.min.js"></script>
	<script src="js/store.min.js"></script>
	<script src="js/script.js"></script>
</head> 
<body> 

<div data-role="page">
  	<div data-role="header">
		<h1>Deine Vorlesung</h1>
		<a href="index.php" data-direction="reverse" data-role="button" data-icon="home" data-iconpos="notext" data-theme="b"></a> 
  	</div>

  	<div data-role="content" id="content">
  		<script type="text/javascript">
  		$(document).bind('pageshow', function() {
			$('#content').load("ajax/auswertung_content.php", {
				"studiengang_id": store.get("studiengang"),
				"semester_id": store.get("semester"),
				"wahlfaecher": store.get("wahlfaecher")
			});
		});
  		</script>
	</div>

  	<div data-role="footer">
		<h4></h4>
	</div>
</div>
</body>
</html>