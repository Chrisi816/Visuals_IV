$("document").ready(function () {
	$(".container-StaatsPage").hide();
	$(".container-PersoPage").hide();
	$(".container-FesselPage").hide();
	$(".container-AutoPage").hide();
	$(".container-KleidungsPage").hide();
	$(".container-EmotePage").hide();
	$(".container-FrontPage").hide();
	window.addEventListener("message", function (event) {
		var msg = event.data;
		if (event.data.type === "MakeInteraktionsMenu") {
			$(".container-FrontPage").fadeIn(300);
		} else if (event.data.type === "Removeall") {
			$(".container-FrontPage").hide();
			$(".container-StaatsPage").hide();
			$(".container-PersoPage").hide();
			$(".container-FesselPage").hide();
			$(".container-AutoPage").hide();
			$(".container-KleidungsPage").hide();
			$(".container-EmotePage").hide();
		}
	});
});

// Actions Front Page
$(".staat").click(function () {
	$(".container-FrontPage").hide();
	$(".container-StaatsPage").fadeIn(300);
});
$(".perso").click(function () {
	$(".container-FrontPage").hide();
	$(".container-PersoPage").fadeIn(300);
});
$(".fesseln").click(function () {
	$(".container-FrontPage").hide();
	$(".container-FesselPage").fadeIn(300);
});
$(".auto").click(function () {
	$(".container-FrontPage").hide();
	$(".container-AutoPage").fadeIn(300);
});
$(".emote").click(function () {
	$(".container-FrontPage").hide();
	$(".container-KleidungsPage").fadeIn(300);
});
$(".kleidung").click(function () {
	$(".container-FrontPage").hide();
	$(".container-EmotePage").fadeIn(300);
});
$(".home").click(function () {
	$(".container-FrontPage").fadeIn(300);
	$(".container-StaatsPage").hide();
	$(".container-PersoPage").hide();
	$(".container-FesselPage").hide();
	$(".container-AutoPage").hide();
	$(".container-KleidungsPage").hide();
	$(".container-EmotePage").hide();
});

window.addEventListener("keyup", function onEvent(event) {
	if (event.key === "x") {
		$(".container-FrontPage").hide();
		$(".container-StaatsPage").hide();
		$(".container-PersoPage").hide();
		$(".container-FesselPage").hide();
		$(".container-AutoPage").hide();
		$(".container-KleidungsPage").hide();
		$(".container-EmotePage").hide();

		$.post("https://Visuals_IV_XMenu/CloseMenu", JSON.stringify({}));
	}
});
