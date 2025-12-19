<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Institute Management System Registration</title>
<style>
    /* 1. Basic Page Setup & Centering */
    body {
        font-family: 'Roboto', Arial, sans-serif;
        background-color: #f0f2f5; /* Light, consistent background */
        display: flex;
        justify-content: center; /* Center horizontally */
        align-items: center; /* Center vertically */
        min-height: 100vh; /* Full viewport height */
        margin: 0;
    }

    /* 2. Form Container Styling */
    .register-container {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 8px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        width: 350px; /* Width for the form area */
    }

    /* 3. Heading Style */
    h4 {
        color: #007bff; /* Primary blue color */
        text-align: center;
        margin-bottom: 25px;
        font-size: 1.6rem;
        border-bottom: 2px solid #e1e1e1;
        padding-bottom: 10px;
    }

    /* 4. Form Layout */
    form {
        display: flex;
        flex-direction: column;
    }
    
    /* 5. Styling for Labels (Text preceding the input) */
    label {
        font-weight: 500; /* Medium font weight */
        color: #333;
        margin-top: 10px;
        margin-bottom: 5px;
        text-transform: capitalize; /* Makes labels look nicer */
    }

    /* 6. Input Field Styling */
    input[type="number"],
    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 12px;
        border: 1px solid #ced4da;
        border-radius: 6px;
        box-sizing: border-box;
        margin-bottom: 15px; /* Space below each input field */
        transition: border-color 0.3s;
    }

    input[type="number"]:focus,
    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #007bff; /* Highlight border on focus */
        outline: none;
    }

    /* 7. Sign Up Button Styling */
    input[type="submit"] {
        background-color: #28a745; /* Green for "Sign Up" */
        color: white;
        padding: 12px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 1.1rem;
        font-weight: bold;
        margin-top: 20px;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #1e7e34; /* Darker green on hover */
    }
</style>
</head>
<body>
<div class="register-container">
    <h4>Institute Edit Form</h4>

    <form action="update">
        <label for="institute_id">ID:</label>
        <input type="number" id="institute_id" name="id" value="${ed.id}" >

        <label for="institute_name">Name:</label>
        <input type="text" id="institute_name" name="iname" value="${ed.iname}" required>

        <label for="institute_city">City:</label>
        <input type="text" id="institute_city" name="icity"  value="${ed.icity}" required>

        <label for="institute_fees">Fees:</label>
        <input type="number" id="institute_fees" name="ifess" value="${ed.ifess}" required>

        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="${ed.username}" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" value="${ed.password}" required>

        <input type="submit" value="Update">
    </form>
</div>
</body>
</html>