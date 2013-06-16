$(document).bind("ready pageinit pagechange pageshow", function(){
	$.mobile.defaultPageTransition = "slide";

	$('#content').load("ajax/auswertung_content.php", {
		"studiengang_id": store.get("studiengang"),
		"semester_id": store.get("semester")
	});

});