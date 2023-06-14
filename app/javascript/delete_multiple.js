$(document).on("submit", "#delete-multiple-form", function(event) {
    event.preventDefault();
    var form = $(this);
    var url = form.attr("action");
    var method = form.attr("method");
    var data = form.serialize();
  
    $.ajax({
      url: url,
      method: method,
      data: data,
      success: function(response) {
        // Handle success response
        // For example, show a success message and refresh the contact list
        showSuccessMessage("Contacts deleted successfully");
        window.location.reload(); // Refresh the page to update the contact list
      },
      error: function(xhr, status, error) {
        // Handle error response
        // For example, show an error message
        showErrorMessage("An error occurred while deleting contacts");
      }
    });
  });
  
  function showSuccessMessage(message) {
    var alert = $("<div>").addClass("alert alert-success").text(message);
    $("#messages").append(alert);
  }
  
  function showErrorMessage(message) {
    var alert = $("<div>").addClass("alert alert-danger").text(message);
    $("#messages").append(alert);
  }
  