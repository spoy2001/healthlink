
document.addEventListener("DOMContentLoaded", function () {
    console.log("Document loaded");
    document.getElementById("loginForm").addEventListener("submit", function (event) {
        console.log("Form submitted");
        event.preventDefault(); // Prevent form submission

        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        var errorMessage = "";

        if (email.trim() === "") {
            errorMessage += "Email is required.<br>";
        } else if (!isValidEmail(email)) {
            errorMessage += "Please enter a valid email address.<br>";
        }
        if (password.trim() === "") {
            errorMessage += "Password is required.<br>";
        }

        if (errorMessage !== "") {
            showAlert(errorMessage);
        } else {
            // Perform login submission
            this.submit();
        }
    });
});

function isValidEmail(email) {
    // Regular expression for validating email
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}

function showAlert(message) {
    console.log("Showing alert");
    var alertElement = document.createElement("div");
    alertElement.className = "alert alert-danger alert-dismissible fade show";
    alertElement.innerHTML = message;
    
    var closeButton = document.createElement("button");
    closeButton.type = "button";
    closeButton.className = "btn-close";
    closeButton.setAttribute("data-bs-dismiss", "alert");
    closeButton.setAttribute("aria-label", "Close");

    alertElement.appendChild(closeButton);

    var alertContainer = document.getElementById("alertContainer");
    alertContainer.innerHTML = "";
    alertContainer.appendChild(alertElement);
}
