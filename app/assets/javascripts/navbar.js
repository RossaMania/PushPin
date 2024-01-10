document.addEventListener("DOMContentLoaded", function () {
  var button = document.querySelector('button[aria-controls="mobile-menu"]');
  var mobileMenu = document.querySelector("#mobile-menu");
  var iconOpen = button.querySelector(".hidden");
  var iconClosed = button.querySelector(".block");

  button.addEventListener("click", function () {
    iconOpen.classList.toggle("hidden");
    iconClosed.classList.toggle("hidden");
    mobileMenu.classList.toggle("hidden");
  });
});
