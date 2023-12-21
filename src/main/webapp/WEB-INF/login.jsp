<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>

    <style>  
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            background: url('https://images.unsplash.com/photo-1577017040065-650ee4d43339?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center fixed;
            background-size: cover;
            filter: blur(px); /* 5px blur for the background image */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-container {
            width: 400px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7); /* Slight opacity to the background */
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            font-family: 'Calibri', sans-serif;
            font-size: 25pt;
            font-style: normal;
            font-weight: bold;
            color: #483D8B; /* SlateBlue */
            text-align: center;
            text-decoration: underline;
        }

        form {
            margin-top: 20px;
        }

        table {
            width: 100%;
        }

        table tr td {
            padding: 8px;
        }

        input[type="text"],
        input[type="password"] {
            width: calc(100% - 16px);
            padding: 8px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50; /* Green */
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error-message {
            color: #FF0000; /* Red */
            text-align: center;
            margin-top: 10px;
        }

        .signup-link {
            display: block;
            text-align: center;
            margin-top: 10px;
            font-size: 14px;
            color: #008CBA; /* Blue */
            cursor: pointer;
        }

        .signup-link a {
            color: #008CBA; /* Blue */
            text-decoration: none;
        }

        .signup-link a:hover {
            color: #004266; /* Darker Blue on hover */
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h3>Login Page</h3>

        <div class="error-message">${error}</div>

        <form method="post" action="${pageContext.request.contextPath}/login">
            <table>
                <tr>
                    <td>UserName(E-mail)</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" value="Login"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>