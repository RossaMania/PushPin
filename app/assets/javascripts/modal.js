const initializeModal = () => {
  const openModalButton = document.getElementById("openModal");
  const closeModalButton = document.getElementById("closeModal");
  const modal = document.getElementById("placesModal");

  openModalButton.addEventListener("click", () => {
    // Show the modal
    modal.classList.remove("hidden");
  });

  closeModalButton.addEventListener("click", () => {
    modal.classList.add("hidden");
  });

  modal.addEventListener("click", (event) => {
    // Check if the click occurred on the black background
    if (
      event.target === modal &&
      event.target.getAttribute("data-modal") !== undefined
    ) {
      modal.classList.add("hidden");
    }
  });
};

document.addEventListener("DOMContentLoaded", initializeModal);
