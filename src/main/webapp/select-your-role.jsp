<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select Your Role</title>
</head>
<body>
    <h2>Select Your Role</h2>
    <form action="/register-user" method="post">
        <label for="role">Select Role:</label>
        <select id="role" name="role">
            <option value="admin">Admin</option>
            <option value="user">User</option>
            <!-- Add more options as needed -->
        </select>
        <br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
