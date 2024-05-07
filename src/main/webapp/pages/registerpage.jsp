<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="./registerpage.css"/>
    <link rel="stylesheet" href="./loginpage.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-8AXkuy3J8jrh9FqIVSL27U+J49yUKx6+DsY5dj0tAgBiS2w5mI+bawOPd9GOas6Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-ByyEihO1XcMH4SzZ4ojvO79SA16i0fwNr2w+4zqc/d8LZyap0WopMv9uAcPJgYHr" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.3/components/registrations/registration-3/assets/css/registration-3.css">
    <style>
      
  </style>
</head>

<body>
<section class="p-3 p-md-4 p-xl-5">
    <div class="container">
        <div class="row">
          <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
            <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <h4 class="mb-4">We are more than just a company</h4>
                <p class="small mb-0">Healthlink.</p>
            </div>
        </div>
        <div class="col-12 col-md-6 bsb-tpl-bg-lotion">
          <div class="p-md-4">
              <div class="mb-5">
                  <h2 class="h3">Registration</h2>
              </div>
              <div class="d-flex gap-3 flex-column flex-md-row">
                <h3 class="fs-6 fw-normal text-secondary">Register with google</h3>
                <a href="#!" class="btn bsb-btn-xl btn-outline-primary">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                        <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                    </svg>
                    <span class="ms-2 fs-6">Google</span>  
                </a> 
            </div>
            <hr class="mt-4 mb-4 border-secondary" style="width: 100%">
            <div class="mt-4 mb-4 text-center">
                <h3 class="fs-6 fw-normal text-secondary ">Or</h3> 
            </div>
            <div class="mt-4 mb-4">
                <h3 class="fs-6 fw-normal text-secondary">Enter your details to register</h3>                             
            </div>                        
              <form id="registrationForm">
                  <div class="row gy-3">
                      <div class="col-md-6">
                          <label for="firstName" class="form-label">First Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name" required>
                      </div>
                      <div class="col-md-6">
                          <label for="lastName" class="form-label">Last Name <span class="text-danger">*</span></label>
                          <input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last Name" required>
                      </div>
                      <div class="col-12">
                          <label for="email" class="form-label">Email <span class="text-danger">*</span></label>
                          <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com" required>
                      </div>
                      <div class="col-12">
                          <label for="password" class="form-label">Password <span class="text-danger">*</span></label>
                          <input type="password" class="form-control" name="password" id="password" value="" required>
                      </div>
                      <div class="col-12">
                          <div class="form-check">
                              <input class="form-check-input" type="checkbox" value="" name="iAgree" id="iAgree" required>
                              <label class="form-check-label text-secondary" for="iAgree">
                                  I agree to the <a href="#!" class="link-primary text-decoration-none">terms and conditions</a>
                              </label>
                          </div>
                      </div>
                      <div class="col-12">
                          <div class="d-grid">
                              <button class="btn bsb-btn-xl btn-primary" type="submit">Sign up</button>
                          </div>
                      </div>
                  </div>
              </form>
              <hr class="mt-5 mb-4 border-secondary-subtle">
              <p class="m-0 text-secondary text-end">Already have an account? <a href="loginpage.jsp" class="link-primary text-decoration-none">Sign in</a></p>
          </div>
      </div>
      
        </div>
    </div>
</section>

<script>
  
    function validateForm() {
        var firstName = document.getElementById("firstName").value;
        var lastName = document.getElementById("lastName").value;
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        var iAgree = document.getElementById("iAgree").checked;

        if (firstName.trim() == "") {
            alert("Please enter your first name");
            return false;
        }

        if (lastName.trim() == "") {
            alert("Please enter your last name");
            return false;
        }

        if (email.trim() == "") {
            alert("Please enter your email");
            return false;
        }

        // Basic email validation
        var emailRegex = /\S+@\S+\.\S+/;
        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address");
            return false;
        }

        if (password.trim() == "") {
            alert("Please enter a password");
            return false;
        }

        if (!iAgree) {
            alert("Please agree to the terms and conditions");
            return false;
        }

        return true;
    }
    document.getElementById('registrationForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent default form submission

    // Gather form data
    const formData = new FormData(this);

    // Send POST request to backend
    fetch('/your-backend-endpoint', {
      method: 'POST',
      body: formData
    })
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      return response.json(); // backend returns JSON response
    })
    .then(data => {
      // Handle successful registration
      console.log(data);
      // Display success message or redirect to another page
    })
    .catch(error => {
      // Handle errors
      console.error('There was an error!', error);
      // Display error message
    });
  });
</script>

</body>
</html>
