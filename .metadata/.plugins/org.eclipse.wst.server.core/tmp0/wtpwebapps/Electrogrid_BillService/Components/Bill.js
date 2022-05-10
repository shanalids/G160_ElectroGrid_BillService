/**
 * 
 */
 
 $(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});

$(document).on("click", "#btnSave", function(event) {
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	// Form validation-------------------
	var status = validateBillForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	// If valid------------------------
	var type = ($("#hidBillIDSave").val() == "") ? "POST" : "PUT";
	$.ajax(
		{
			url: "BillAPI",
			type: type,
			data: $("#formBill").serialize(),
			dataType: "text",
			complete: function(response, status) {
				onBillSaveComplete(response.responseText, status);
			}
		});
});

function onBillSaveComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divBillsGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#hidBillIDSave").val("");
	$("#formBill")[0].reset();
}

// CLIENT-MODEL================================================================
function validateBillorm() {
	// CODE
	if ($("#billCode").val().trim() == "") {
		return "Insert Bill Code.";
	}
	
	// ELECTRICTY ACCOUNT NUMBER
	if ($("#electricityAccountNo").val().trim() == "") {
		return "Insert Electricty Account Number.";
	}
	
	// BILL MONTH
	if ($("#billMonth").val().trim() == "") {
		return "Insert Bill Month.";
	}
	
	// UNITS
	if ($("#units").val().trim() == "") {
		return "Insert Units.";
	}
	
	// PAYMENT AMOUNT
	if ($("#paymentAmount").val().trim() == "") {
		return "Insert Payment Amount.";
	}
	
	// is numerical value
	var tmpUnits = $("#units").val().trim();
	if (!$.isNumeric(tmpUnits)) {
		return "Insert a numerical value for Units.";
	}
	
	var tmpPaymentAmount = $("#paymentAmount").val().trim();
	if (!$.isNumeric(ttmpPaymentAmount)) {
		return "Insert a numerical value for PaymentAmount.";
	}

	return true;
}
