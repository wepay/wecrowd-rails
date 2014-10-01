$(function() {
	$(".disable-intro").click(function() {
		introJs().exit();
		$.cookie('intro_disabled', true);
		$(".intro-header").hide();
	});
	
	$("[data-start-demo]").click(function() {
		introJs().start();
		$.cookie('intro_disabled', false);
		introJs().start();
	});
	
	//introJs().start();
});