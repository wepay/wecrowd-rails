// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
	
	$("#donation-button").click(function(e) {
		e.preventDefault();
		WePay.set_endpoint("stage");
		var response = WePay.credit_card.create({
			"client_id":        $(".donate-form input[name=client_id]").val(),
			"user_name":        $(".donate-form input[name=user_name]").val(),
			"email":            $(".donate-form input[name=user_email]").val(),
			"cc_number":        $(".donate-form input[name=cc_number]").val(),
			"cvv":              $(".donate-form input[name=cvv]").val(),
			"expiration_month": $(".donate-form select[name=expiration_month]").val(),
			"expiration_year":  $(".donate-form select[name=expiration_year]").val(),
			"address": {
				"zip": $(".donate-form input[name=zip]").val()
			}
		}, function(data) {
			if (data.error) {
				alert(data.error.error_description);
				// handle error response
			} else {
				$(".donate-form input[name=credit_card_id]").val(data.credit_card_id);
				$(".donate-form input[name=cc_number]").val('');
				$(".donate-form input[name=cvv]").val('');
				$(".donate-form select[name=expiration_month]").val('');
				$(".donate-form select[name=expiration_year]").val('');
				$("form.donate-form").submit();
			}
		});
		if (response.error) {
			alert(response.error_description);
		}
	});
});