$(document).bind("pageshow", function(){
	$.mobile.defaultPageTransition = "slide";
	
	$("#btnsave").click(function(){
		
		var wfauswahl = new Array();
		$("[name=wahlfach]:checked").each( function(nr) {
			wfauswahl[nr] = $(this).val();
		});
		store.set("wahlfach", wfauswahl);

	});
});