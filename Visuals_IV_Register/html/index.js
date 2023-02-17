$("document").ready(function () {
	$(".container-register").hide();
	window.addEventListener("message", function (event) {
		var msg = event.data;
		if (event.data.type === "OpenRegisterMenu") {
			$(".container-register").show();
		}
	});
});
