//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require_self
<link rel="stylesheet" type="text/css" href="styles.css"></link>

document.addEventListener("DOMContentLoaded", function () {
  const buttons = document.querySelector(".buttons");
  const signInButton = document.getElementById("signInButton");
  const joinButton = document.getElementById("joinButton");

  // Function to show the buttons
  function showButtons() {
    buttons.classList.add("buttons-visible");
  }

  // Listen for animation end events on the moving elements
  document.getElementById("element1").addEventListener("animationend", showButtons);
  document.getElementById("element2").addEventListener("animationend", showButtons);
  document.getElementById("element3").addEventListener("animationend", showButtons);
});
