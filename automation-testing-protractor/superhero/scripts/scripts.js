$( "#addHero-form" ).submit(function( event ) {
  $("#hero-list").append('<li class="list-group-item">' + $("#heroInput").val() + '</li>')


  event.preventDefault();
});
