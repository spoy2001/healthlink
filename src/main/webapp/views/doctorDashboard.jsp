<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Doctor Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome CSS -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <style>
    .sidebar {
      position: fixed;
      top: 0;
      bottom: 0;
      left: 0;
      width: 170px;
      z-index: 100;
      padding: 48px 0;
      background-color: #67c6e3;
      color: white; /* Change text color to white */
    }

    .main-content {
      margin-left: 210px;
      padding: 20px;
    }

    .profile {
      text-align: center;
    }

    .profile i {
      font-size: 50px;
      margin-bottom: 5px;
    }

    .logout {
      text-align: center;
      margin-top: 0px;
      margin-bottom: 20px; /* Adjusted margin */
      padding-bottom: 10px;
      border-bottom: 1px solid white; /* Add a thin white-colored horizontal bar */
    }

    .nav-link {
      color: white !important; /* Change text color to white */
    }

    /* Custom CSS to match background color */
    .dropdown-menu {
      background-color: #67c6e3; /* Match sidebar background color */
      overflow: hidden;
      border: none;
    }

    /* Apply sidebar background color to the button */
    .dropdown-toggle {
      background-color: #67c6e3;
      border: none;
    }

    /* Change color of dropdown items to white */
    .dropdown-item {
      background-color: #67c6e3;
      color: white ;
      padding: 0;
      margin-left: 35px;

    }

    /* Underline sidebar items on hover */
    .sidebar .nav-link:hover {
      text-decoration: underline;
    }

    .logout a {
      color: white; /* Change color to white */
    }

    /* Custom CSS for the list items */
    .dropdown-item ul {
      list-style: none; /* Remove default list style */
      margin-left: 15px; /* Adjust margin-left */
      padding: 0; /* Remove default padding */
    }

    /* Reduce text size of list items */
    .dropdown-item ul li {
      font-size: 14px; /* Smaller font size */
    }

    /* Underline accept and modify on hover without changing background */
    .dropdown-item:hover {
  text-decoration: underline;
  background-color: #67c6e3;
  color: white; /* Match sidebar background color */
  cursor: pointer;
}

  </style>
</head>
<body>

<div class="container-fluid">
  <div class="row">
    <!-- Sidebar -->
    <nav class="col-md-3 col-lg-2 d-md-block sidebar">
      <div class="position-sticky">
        <!-- Profile Icon -->
        <div class="profile">
          <i class="fas fa-user-circle"></i>
          <h6>Dr. John Doe</h6>
        </div>

        <!-- Logout -->
        <div class="logout">
          <a href="#">Logout</a>
        </div>

        <!-- Sidebar Menu -->
        <ul class="nav flex-column">
          <li class="nav-item">
            <div class="dropdown">
              <button class="nav-link dropdown-toggle" type="button" id="appointmentDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                Appointment
              </button>

              <ul class="dropdown-menu" aria-labelledby="appointmentDropdown">
                <li class="dropdown-item">
                  Accept
                </li>
                <li class="dropdown-item">
                  Modify
                </li>
              </ul>
          </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/prescription.jsp" id="generateReportLink">Generate Report</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Profile Settings</a>
          </li>
          <!-- Add more sidebar items as needed -->
        </ul>
      </div>
    </nav>

    <!-- Main content -->
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main-content" id="doctorDashboard">
      <h1>Main Content</h1>
      <p>This is where your main content will be.</p>
    </main>
  </div>
</div>

<!-- Bootstrap JS (Optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<script>
  // JavaScript code to handle shifting of items
  document.addEventListener('DOMContentLoaded', function() {
    var appointmentDropdown = document.getElementById('appointmentDropdown');
    var generateReportItem = document.querySelector('.nav-item:nth-child(2)');
    var profileSettingsItem = document.querySelector('.nav-item:nth-child(3)');

    appointmentDropdown.addEventListener('click', function() {
      var dropdownMenu = this.nextElementSibling;
      var isOpen = dropdownMenu.classList.contains('show');

      if (isOpen) {
        // If dropdown is open, shift items back to original position
        generateReportItem.style.marginTop = '55px';
        profileSettingsItem.style.marginTop = '0px';
      } else {
        // If dropdown is closed, shift items down
        generateReportItem.style.margin = '0';
        profileSettingsItem.style.margin = '0';
      }
    });
  });
</script>

</body>
</html>