$(document).bind("pageinit pagechange", function(){
	$.mobile.defaultPageTransition = "slide";


	$("[name=semester]").parent().hide();
	$( "." + $("#studium").val() ).parent().show();
	/*
	var cont = $("[name=semester]").parent().parent();
	var sem = $("[name=semester]").parent().detach();
	var current = sem.children().filter( "." + $("#studium").val() ).parent();
	cont.append(current);
	$(document).trigger('create');
	*/

	$("#studium").change(function(){
		$("[name=semester]").parent().hide();
		$( "." + $("#studium").val() ).parent().show();
	});

	// Startseite (Studiengang & Semester) speichern:
	$("#btnnext").click(function(){
		var stgeingabe = $("#studium").val();
		store.set("studiengang", stgeingabe);

		var semeingabe = $("[name=semester]:checked").val();
		store.set("semester", semeingabe);
	});

	// Wahlfächer speichern:
	$("#btnsave").click(function(){
		var wfauswahl = new Array();
		$("[name=wahlfach]:checked").each( function(nr) {
			wfauswahl[nr] = $(this).val();
		});
		store.set("wahlfaecher", wfauswahl);
	});

});
