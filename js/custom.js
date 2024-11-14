//general - for required fields
$(document).on('page_ready', function() {
    $(':required').not(':disabled')
    .not('[type="search"]') 
    .not('[aria-label="View Calendar"]')
    .not('#form_nav :input')
    .after('<span>*</span>');
});

// for edit_entry.php (notation and terms and conditions)
function openModal() {
    var modal = document.getElementById("terms-modal");
    modal.style.display = "flex"; 
}

function openNModal() {
    var modal = document.getElementById("notation-modal");
    modal.style.display = "flex"; 
}

function closeModal(modal) {
    modal.style.display = "none"; 
}

window.onclick = function(event) {
    var termsModal = document.getElementById("terms-modal");
    var notationModal = document.getElementById("notation-modal");

    if (event.target.classList.contains('close-btn') || event.target == termsModal) {
        closeModal(termsModal);
    }
    
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

//for holiday.php
function confirmDeletion(holidayId) {
    // Show a custom confirmation message
    showPopupMessage("Are you sure you want to delete this holiday?", "confirm-message", function(confirm) {
        if (confirm) {
            // If confirmed, submit the form for deletion
            document.getElementById('delete_form_' + holidayId).submit();
        }
    });
}

function showPopupMessage(message, type, callback = null) {
    const popup = document.getElementById("popupMessage");
    
    // Clear previous content
    popup.innerHTML = "";
    
    // Set message and class
    const messageDiv = document.createElement("div");
    messageDiv.textContent = message;
    popup.appendChild(messageDiv);
    
    popup.className = `popup-message ${type}`;
    popup.style.display = "block";
    
    if (type === "confirm-message") {
        // Create a div to hold the buttons below the message
        const buttonContainer = document.createElement("div");
        buttonContainer.style.marginTop = "10px";
        buttonContainer.style.textAlign = "center";
        
        // Confirm button
        const confirmBtn = document.createElement("button");
        confirmBtn.textContent = "Confirm";
        confirmBtn.style.marginRight = "5px";
        confirmBtn.onclick = () => {
            popup.style.display = "none";
            if (callback) callback(true);
        };
        
        // Cancel button
        const cancelBtn = document.createElement("button");
        cancelBtn.textContent = "Cancel";
        cancelBtn.onclick = () => {
            popup.style.display = "none";
            if (callback) callback(false);
        };
        
        // Add buttons to the container, and the container to the popup
        buttonContainer.appendChild(confirmBtn);
        buttonContainer.appendChild(cancelBtn);
        popup.appendChild(buttonContainer);
    }

    if (type !== "confirm-message") {
        setTimeout(() => {
            popup.style.display = "none";
        }, 3500);
    }
}

//for venue setup
document.addEventListener('DOMContentLoaded', function() {
    const roomDropdown = document.getElementById('rooms'); // Reference to the rooms dropdown
    const venueSetupDropdown = document.getElementById('f_venue_setup'); // Reference to the existing dropdown

    // Ensure the dropdowns exist
    if (!roomDropdown || !venueSetupDropdown) {
        console.error("Error: Required dropdowns not found in the DOM.");
        return;
    }

    // Venue options mapping
    const venueOptions = {
        'PC': 'Classroom  - 1,100 pax',
        'PB': 'Banquet    - 500 pax',
        'PF': 'Conference - 500 pax',
        '1C': 'Classroom  - 40 pax',
        '1B': 'Banquet    - 30 pax',
        '1F': 'Conference - 30 pax',
        '2C': 'Classroom  - 200 pax',
        '2B': 'Banquet    - 160 pax',
        '2F': 'Conference - 160 pax',
    };

    // Room to venue mapping
    const roomToVenueMapping = {
        "1": ["PC", "PB", "PF"], 
        "2": ["1C", "1B", "1F"], 
        "3": ["2C", "2B", "2F"], 
    };

    // Add event listener for room selection
    roomDropdown.addEventListener('change', function() {
        const selectedRoomIds = Array.from(roomDropdown.selectedOptions).map(option => option.value);
        filterVenueSetupOptions(selectedRoomIds);
    });

    // Function to filter options based on selected rooms
    function filterVenueSetupOptions(selectedRoomIds) {
        venueSetupDropdown.innerHTML = ''; // Clear existing options

        // Set to keep track of added options to avoid duplicates
        const addedOptions = new Set();

        // Populate the dropdown based on selected rooms
        selectedRoomIds.forEach(roomId => {
            const optionsForRoom = roomToVenueMapping[roomId] || [];
            optionsForRoom.forEach(optionValue => {
                if (!addedOptions.has(optionValue)) {
                    const newOption = document.createElement('option');
                    newOption.value = optionValue;
                    newOption.textContent = venueOptions[optionValue]; // Use the description from venueOptions
                    venueSetupDropdown.appendChild(newOption);
                    addedOptions.add(optionValue); // Track added options to avoid duplicates
                }
            });
        });

        // Optional: Select the first available option if any
        if (venueSetupDropdown.options.length > 0) {
            venueSetupDropdown.value = venueSetupDropdown.options[0].value; // Select the first option
        }
    }

    // Initialize the dropdown with the current selected rooms
    const initialRoomIds = Array.from(roomDropdown.selectedOptions).map(option => option.value);
    filterVenueSetupOptions(initialRoomIds);
});