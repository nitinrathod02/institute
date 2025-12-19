<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Institute Management System Login</title>
<style>
    /* 1. Basic Reset and Page Centering */
    body {
        font-family: 'Roboto', sans-serif;
        background-color: #f0f2f5; /* Light, calming background */
        display: flex;
        justify-content: center; /* Center horizontally */
        align-items: center; /* Center vertically */
        min-height: 100vh; /* Full viewport height */
        margin: 0;
    }

    /* 2. Form Container Styling */
    .login-container {
        background-color: #ffffff; /* White card background */
        padding: 30px 40px;
        border-radius: 8px; /* Rounded corners */
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1); /* Professional shadow */
        width: 320px; /* Fixed width for the form area */
        text-align: center; /* Center content inside the container */
    }

    /* 3. Heading Style */
    h4 {
        color: #1877f2; /* A strong blue, common in modern UIs */
        margin-bottom: 25px;
        font-size: 1.5rem;
        padding-bottom: 10px;
        border-bottom: 2px solid #e1e1e1;
    }

    /* 4. Form Layout */
    form {
        display: flex;
        flex-direction: column;
        align-items: stretch; /* Make items take full width */
    }

    /* 5. Input Field Styling */
    input[type="text"],
    input[type="password"] {
        width: 100%; /* Full width within the form */
        padding: 12px;
        margin-bottom: 15px;
        border: 1px solid #ced4da;
        border-radius: 6px;
        box-sizing: border-box;
        transition: border-color 0.3s;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #1877f2; /* Highlight border on focus */
        outline: none;
    }

    /* 6. Login Button Styling */
    input[type="submit"] {
        background-color: #1877f2;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 1.1rem;
        font-weight: bold;
        margin-top: 10px;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #166fe5; /* Slightly darker blue on hover */
    }

    /* 7. Register Link Styling */
    .register-link {
        margin-top: 20px;
    }

    .register-link a {
        color: #1877f2;
        text-decoration: none;
        font-size: 0.9rem;
    }

    .register-link a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
<div class="login-container">
    <h4>Institute Login</h4>

    <form action="login">
        <input type="text" name="username" placeholder="Username" required>

        <input type="password" name="password" placeholder="Password" required>

        <input type="submit" value="Login">
        
        </form>
    <div class="register-link">
        <a href="register">Register</a>
    </div>
</div>
</body>
</html>