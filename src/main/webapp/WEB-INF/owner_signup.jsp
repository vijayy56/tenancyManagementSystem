<%@ page language="java" contentType="text/html; charset=ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Signup Page</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        h1 {
            font-family: 'Calibri', sans-serif;
            font-size: 25pt;
            font-style: normal;
            font-weight: bold;
            color: #483D8B; /* SlateBlue */
            text-align: center;
            text-decoration: underline;
        }
        * {
            box-sizing: border-box;
        }


        .form-input {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            border: none;
            background: #f1f1f1;
        }

        .form-input:focus {
            background-color: #ddd;
            outline: none;
        }

        button {
            background-color: #AEC6CF;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

        button:hover {
            opacity: 1;
        }

        .cancelbtn {
            padding: 14px 20px;
            background-color: #AEC6CF;
        }

        .cancelbtn, .signupbtn {
            float: left;
            width: 50%;
        }

        .container {
            padding: 16px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }

        @media screen and (max-width: 600px) {
            .cancelbtn, .signupbtn {
                width: 100%;
            }
        }

        .error-message {
            color: #FF0000;
            text-align: left;
            margin-top: 5px;
            font-size: 14px;
        }

        .signup-link {
            display: block;
            text-align: center;
            margin-top: 10px;
            font-size: 14px;
            color: #001F3F; /* Navy Blue */
            cursor: pointer;
            text-decoration: underline;
        }

        .signup-link a {
            color: #001F3F; /* Navy Blue */
            text-decoration: none;
            font-weight: bold;
            text-decoration-color: #001F3F; /* Navy Blue */
        }

        .signup-link a:hover {
            color: #004080; /* Darker Blue on hover */
        }
    </style>
</head>
<body>
    <form action="${pageContext.request.contextPath}/addUser" style="border:1px solid #ccc" method="post" onsubmit="return validateForm()">
      <div class="signup-link">Already have an account? <a href="${pageContext.request.contextPath}/login">Login</a></div>
      <div class="container">
            <h1>Sign Up</h1>
            <p>Please fill in this form to create an account.</p>
            <hr>

            <label for="fname"><b>First Name</b></label>
            <input type="text" placeholder="Enter First Name" name="user_fname" id="user_fname" class="form-input" required onkeyup="validateName()">
            <div class="error-message" id="nameError"></div>

            <label for="lname"><b>Last Name</b></label>
            <input type="text" placeholder="Enter Last Name" name="user_lname" id="user_lname" class="form-input" required>

            <label for="email"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="user_email" id="user_email" class="form-input" required onkeyup="validateEmail()">
            <div class="error-message" id="emailError"></div>

            <label for="pass"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="user_pass" id="user_pass" class="form-input" required onkeyup="validatePassword()">
            <div class="error-message" id="passwordError"></div>

            <label for="mobile"><b>Mobile</b></label>
            <input type="text" placeholder="Enter Mobile" name="user_mobile" id="user_mobile" class="form-input" required onkeyup="validateMobile()">
            <div class="error-message" id="mobileError"></div>

            <div class="clearfix">
                <button type="button" class="cancelbtn">Cancel</button>
                <button type="submit" class="signupbtn">Sign Up</button>
            </div>
        </div>
    </form>

    <script>
        function validateName() {
            var name = document.getElementById("user_fname").value;
            var isValid = /^[a-zA-Z]+$/.test(name);
            displayError("nameError", isValid, "Only letters are allowed");
        }

        function validateEmail() {
            var email = document.getElementById("user_email").value;
            var isValid = /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
            displayError("emailError", isValid, "Enter a valid email address");
        }

        function validatePassword() {
            var password = document.getElementById("user_pass").value;
            var isValid = /^(?=.*[!@#$%^&*(),.?":{}|<>])(?=.*[A-Z])(?=.*\d).{8,}$/.test(password);
            displayError("passwordError", isValid, "Password must have at least 8 characters, including one uppercase letter, one digit, and one special character");
        }

        function validateMobile() {
            var mobile = document.getElementById("user_mobile").value;
            var isValid = /^\d{10}$/.test(mobile);
            displayError("mobileError", isValid, "Enter a 10-digit mobile number");
        }

        function displayError(elementId, isValid, errorMessage) {
            var errorElement = document.getElementById(elementId);
            if (!isValid) {
                errorElement.innerHTML = errorMessage;
            } else {
                errorElement.innerHTML = "";
            }
        }

        function validateForm() {
            validateName();
            validateEmail();
            validatePassword();
            validateMobile();

            var nameError = document.getElementById("nameError").innerHTML;
            var emailError = document.getElementById("emailError").innerHTML;
            var passwordError = document.getElementById("passwordError").innerHTML;
            var mobileError = document.getElementById("mobileError").innerHTML;

            return nameError === "" && emailError === "" && passwordError === "" && mobileError === "";
        }
    </script>
</body>
</html>
