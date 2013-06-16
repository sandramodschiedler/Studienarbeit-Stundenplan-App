<?php
require("../php/db.php");

$studiengang_id = $_POST['studiengang_id'];
$semester_id = $_POST['semester_id'];
$wahlfaecher_ids = is_array($_POST['wahlfaecher']) ? join(',', $_POST['wahlfaecher']) : '0';
$wochentag = date("N");

// Pflichtfächer lesen
$sql_pflichtfach =
"SELECT * FROM pflichtvorlesung ".
"WHERE studiengang_id = ".$studiengang_id." ".
"AND semester_id = ".$semester_id." ".
"AND zeit > DATE_SUB( NOW() , INTERVAL 45 MINUTE ) ".
"AND zeit < DATE_ADD( NOW(), INTERVAL 45 MINUTE )".
"AND wochentag = ".$wochentag;

$question = $db->prepare($sql_pflichtfach);
$question->execute();
$result = $question->fetch();


// wenn keine Pflichtfächer -> Wahlfächer lesen
if($result["name"] == "") {
	$sql_wahlfach =
	"SELECT * FROM wahlfach ".
	"WHERE id IN (".$wahlfaecher_ids.") ".
	"AND zeit > DATE_SUB( NOW() , INTERVAL 45 MINUTE ) ".
	"AND zeit < DATE_ADD( NOW(), INTERVAL 45 MINUTE )".
	"AND wochentag = ".$wochentag;

	$question = $db->prepare($sql_wahlfach);
	$question->execute();
	$result = $question->fetch();
}


// Anzeigen
if($result["name"] != "") {
	echo
	'<div class="anzeige">'.
		'<div class="raumanzeige">'.
			$result["ort"].
		'</div>'.
		'<div class="info">'.
			$result["name"].'<br />'.
			'<div class="uhr">'.
				'Beginn: '.$result["zeit"].' – Professor: '.$result["prof"].
			'</div>'.
		'</div>'.
	'</div>';
} else {
	echo
	'<div class="frei">'.
		'<div class="raumanzeige">frei!</div>'.
	'</div>';
}
?>
