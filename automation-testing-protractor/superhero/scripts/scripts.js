$( "#addHero-form" ).submit(function( event ) {
  $("#addHero-Alert").addClass("hide")

  if ($("#heroInput").val() == '') {

    $("#addHero-Alert").removeClass("hide")
    $("#addHero-Alert").text("You must enter a Hero.")

  } else {

    $("#hero-list").append('<li class="list-group-item">' + $("#heroInput").val() + '</li>')
    $("#heroInput").val("")
  }

  event.preventDefault();
});
