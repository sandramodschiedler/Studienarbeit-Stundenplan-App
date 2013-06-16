$(document).bind("ready pageinit pagechange", function(){
	$.mobile.defaultPageTransition = "slide";

	$(".ui-radio").hide();
	$( "." + $("#studium").val() ).parent().show();

	$("#studium").change(function(){
		$(".ui-radio").hide();
		$( "." + $("#studium").val() ).parent().show();
	});


	$("#btnnext").click(function(){
		var stgeingabe = $("#studium").val();
		store.set("studiengang", stgeingabe);

		var semeingabe = $("[name=semester]:checked").val();
		store.set("semester", semeingabe);
	});
});



