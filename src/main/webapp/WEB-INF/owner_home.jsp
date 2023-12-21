<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1495465798138-718f86d1a4bc?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center fixed;
            background-size: cover;
            padding: 20px;
            margin: 0;
            font-family: 'Arial', sans-serif;
            color: white;
            height: 100vh;
            position: relative;
        }

        .container {
            text-align: center;
            backdrop-filter: blur(3px); /* 3px blur for the background image */
            background-color: rgba(255, 255, 255, 0.5); /* Slight opacity to the background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: black; /* Black color for the title */
            font-weight: bold;
            font-size: 2.5em; /* Increased font size */
            margin-bottom: 20px;
        }

        .btn-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        .btn {
            margin: 5px;
            width: 200px;
            font-size: 1.2em;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out;
        }

        .btn-primary {
            background: linear-gradient(to right, #4CAF50, #45a049); /* Different color for the first button */
            color: white;
        }

        .btn-secondary {
            background: linear-gradient(to right, #3498db, #2980b9); /* Different color for the second button */
            color: white;
        }

        .btn-tertiary {
            background: linear-gradient(to right, #e74c3c, #c0392b); /* Different color for the third button */
            color: white;
        }

        .btn-home,
        .btn-logout {
            background-color: #808080; /* Grey color for Home and Logout buttons */
            color: white;
            border: none;
            padding: 4px; /* Decreased padding */
            width: 65px; /* Decreased width */
            border-radius: 5px;
            cursor: pointer;
            position: absolute;
            top: 20px;
        }

        .btn-home {
            right: 90px;
        }

        .btn-logout {
            right: 20px;
        }

        .btn:hover,
        .btn-home:hover,
        .btn-logout:hover {
            filter: brightness(90%);
        }
    </style>
    <title>Owner Details</title>
</head>

<body>

    <div class="container">
        <h1>Owner</h1>

        <div class="btn-container">
            <button type="button" class="btn btn-primary" onclick="redirectTo('/leases')">Lease Details</button>
            <button type="button" class="btn btn-secondary" onclick="redirectTo('/residents')">Resident Details</button>
            <button type="button" class="btn btn-tertiary" onclick="redirectTo('/workorder')">WorkOrder Details</button>
        </div>

        <button type="button" class="btn btn-home" onclick="redirectTo('/owner_home')">Home</button>
        <button type="button" class="btn btn-logout" onclick="redirectTo('/')">Logout</button>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <script>
        function redirectTo(path) {
            window.location.href = path;
        }
    </script>
</body>

</html>