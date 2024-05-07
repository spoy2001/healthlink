<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Print Prescription</title>
</head>
<body>
    <h1>Prescription Details</h1>
    <p>Date: <%= request.getParameter("date") %></p>
    <p>Patient's Name: <%= request.getParameter("firstName") %> <%= request.getParameter("lastName") %></p>
    <p>Symptoms: <%= request.getParameter("symptoms") %></p>
    <p>Advice and Cure: <%= request.getParameter("adviceCure") %></p>
    <p>Medicines: <%= request.getParameter("medicines") %></p>
    <p>Doctor's Name: <%= request.getParameter("doctorFirstName") %> <%= request.getParameter("doctorLastName") %></p>
</body>
</html>
