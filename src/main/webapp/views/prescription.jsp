<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Prescription</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .container{
        background-color: #67c6e3;
        padding: 20px;
        border-radius: 10px;
    }

    h1, label, legend {
      color: white;
    }

    body{
        background-color: #67c6e3;
    }

  </style>
</head>
<body>

<div class="container">
  <h1 id="Prescription" class="mt-5 text-center">Prescription</h1>
  <form action="PrintPrescriptionServlet" method="post">
    <!-- Date Field -->
    <div class="mb-3">
      <label for="date" class="form-label">Date</label>
      <input type="date" name="date" class="form-control" id="date" required>
    </div>

    <div class="row g-3">
        <label for="patientName" class="form-label">Patient's Name</label>
        <div class="col">
          <input type="text" class="form-control" placeholder="First name" aria-label="First name" name="firstName">
        </div>
        <div class="col">
          <input type="text" class="form-control" placeholder="Last name" aria-label="Last name" name="lastName">
        </div>
      </div>

      <br>

    <!-- Symptoms Field -->
    <div class="mb-3">
      <label for="symptoms" class="form-label">Symptoms</label>
      <textarea class="form-control" id="symptoms" rows="3" name="symptoms" required></textarea>
    </div>

    <!-- Advice and Cure Field -->
    <div class="mb-3">
      <label for="adviceCure" class="form-label">Advice and Cure</label>
      <textarea class="form-control" id="adviceCure" rows="3" name="adviceCure" required></textarea>
    </div>

    <!-- Medicines Field -->
    <div class="mb-3">
      <label for="medicines" class="form-label">Medicines</label>
      <textarea class="form-control" id="medicines" rows="3" name="medicines" required></textarea>
    </div>

    <div class="row g-3">
        <label for="patientName" class="form-label">Doctor's Name</label>
        <div class="col">
          <input type="text" class="form-control" placeholder="First name" aria-label="First name" name="doctorFirstName">
        </div>
        <div class="col">
          <input type="text" class="form-control" placeholder="Last name" aria-label="Last name" name="doctorLastName">
        </div>
      </div>

      <br>

    <!-- Digital Signature Field -->
    <div class="mb-3">
      <label for="digitalSignature" class="form-label">Digital Signature</label>
      <input type="file" class="form-control" id="digitalSignature" required>
    </div>

    <!-- Submit Button -->
    <div class="text-center">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </form>
</div>

<!-- Bootstrap JS (Optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
