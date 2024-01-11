document.addEventListener("DOMContentLoaded", function () {
  const button = document.querySelector('button[aria-controls="mobile-menu"]');
  const mobileMenu = document.querySelector("#mobile-menu");
  const iconOpen = button.querySelector(".hidden");
  const iconClosed = button.querySelector(".block");

  button.addEventListener("click", function () {
    iconOpen.classList.toggle("hidden");
    iconClosed.classList.toggle("hidden");
    mobileMenu.classList.toggle("hidden");
  });
});
