$(function() {
	$("[data-end-demo]").click(function() {
		$.cookie('demo_state', "disabled");
	});
	
	$("[data-start-demo]").click(function() {
		$.cookie('demo_state', "enabled");
	});
	
	if (demo_enabled()) {
		load_demo();
	}
});
function load_demo() {
	if ($(".demo").length > 0) {
		$(".modal .modal-title").html($(".demo .demo.title").html());
		$(".modal .modal-body").html($(".demo .demo.content").html());
		$(".modal").modal();
	}
}
function demo_enabled() {
	var demo_state = $.cookie('demo_state');
	return typeof demo_state == "undefined" || demo_state == "enabled";
}