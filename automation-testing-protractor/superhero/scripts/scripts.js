$("#addHero-form").submit(function(event) {

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

$("#vote-form").submit(function(event) {

  var movie1Votes = $("#movieVotes1").text()
  var movie2Votes = $("#movieVotes2").text()
  var movie3Votes = $("#movieVotes3").text()
  var movie4Votes = $("#movieVotes4").text()
  var movie5Votes = $("#movieVotes5").text()

  $("#vote-form").addClass("hide")
  $("#vote-alert").removeClass("hide")

  if ($("#heroMovieRadios1").is(":checked")) {

    movie1Votes = parseInt(movie1Votes) + 1
    $("#movieVotes1").text(movie1Votes)

  } else if ($("#heroMovieRadios2").is(":checked")) {

    movie2Votes = parseInt(movie2Votes) + 1
    $("#movieVotes2").text(movie2Votes)

  } else if ($("#heroMovieRadios3").is(":checked")) {

    movie3Votes = parseInt(movie3Votes) + 1
    $("#movieVotes3").text(movie3Votes)

  } else if ($("#heroMovieRadios4").is(":checked")) {

    movie4Votes = parseInt(movie4Votes) + 1
    $("#movieVotes4").text(movie4Votes)

  } else if ($("#heroMovieRadios5").is(":checked")) {

    movie5Votes = parseInt(movie5Votes) + 1
    $("#movieVotes5").text(movie5Votes)

  }

  event.preventDefault();
});

$("#search-form").submit(function(event) {

  if ($("#search-box").val() == '') {

    // do nothing

  } else if ($("#search-box").val().toLowerCase() == "captain america") {

    alert("Captain America is awesome!")

  } else {

    alert("Your search for " + $("#search-box").val() + " returned 0 results.  Try something else.")

  }

  event.preventDefault();
});

$("#form-login").submit(function(event) {

  $("#login-alert").addClass("hide")

  if ($("#loginEmail").val() == "" || $("#loginPassword").val() == "") {

    $("#login-alert").removeClass("hide")

  } else {

    if ($("#rememberLoginCheck").is(":checked")) {

      var email = $("#loginEmail").text()
      var password = $("#loginPassword").text()

    } else {

      $("#loginEmail").val("")
      $("#loginPassword").val("")

    }

    $("#overlay").addClass("hide")

  }

  event.preventDefault();
});

function logout() {

  $("#overlay").removeClass("hide")
  $("#loginEmail").val(email)
  $("#loginEmail").val(password)

}
