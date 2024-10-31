$(document).on('page_ready', function() {
    $(':required').not(':disabled')
    .not('[type="search"]') 
    .not('[aria-label="View Calendar"]')
    .not('#form_nav :input')  // Exclude all inputs inside the form with ID "form_nav"
    .after('<span>*</span>');
});

// Function to open the Terms and Conditions modal
function openModal() {
    var modal = document.getElementById("terms-modal");
    modal.style.display = "flex"; 
}

// Function to open the Notation modal
function openNModal() {
    var modal = document.getElementById("notation-modal");
    modal.style.display = "flex"; 
}

// Function to close the modals
function closeModal(modal) {
    modal.style.display = "none"; 
}

// Event listener for clicking outside the modals or on close buttons
window.onclick = function(event) {
    var termsModal = document.getElementById("terms-modal");
    var notationModal = document.getElementById("notation-modal");

    // Close Terms modal if clicked outside or on close button
    if (event.target.classList.contains('close-btn') || event.target == termsModal) {
        closeModal(termsModal);
    }
    
    // Close Notation modal if clicked outside or on close button
    if (event.target.classList.contains('nclose-btn') || event.target == notationModal) {
        closeModal(notationModal);
    }
};
/*
// Add event listeners for close buttons
document.querySelectorAll('.close-btn, .nclose-btn').forEach(function(btn) {
    btn.addEventListener('click', function() {
        var modal = btn.closest('.modal') || btn.closest('.nmodal');
        if (modal) {
            closeModal(modal); // Hide the modal
        }
    });
});*/













