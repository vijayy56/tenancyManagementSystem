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
            background: url('https://images.unsplash.com/photo-1687075197066-eb8bb5e91b16?q=80&w=3432&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center fixed;
            background-size: cover;
            padding: 20px;
            margin: 0;
            font-family: 'Arial', sans-serif;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            max-width: 600px;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.5);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: -200px;
            position: relative;
            top: -30px; /* Adjust this value to move the content up */
        }

        h1 {
            color: black; /* Black color for the title */
            font-size: 2.5em;
            font-weight: bold;
        }

        .btn-container {
            margin-top: 20px;
        }

        .btn-lease-details,
        .btn-lease-payment,
        .btn-place-order,
        .btn-home,
        .btn-logout {
            margin: 5px;
            font-size: 1.2em;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            padding: 10px;
            width: 200px;
        }

        .btn-home,
        .btn-logout {
            width: 80px; /* Adjust width for smaller buttons */
            font-size: 0.8em; /* Adjust font size for smaller buttons */
        }

        .btn-lease-details {
            background-color: #4CAF50; /* Green color for Lease Details button */
        }

        .btn-lease-payment {
            background-color: #e74c3c; /* Red color for Lease Payment button */
        }

        .btn-place-order {
            background-color: #3498db; /* Blue color for Place Work Order button */
        }

        .btn-home {
            background-color: #34495e; /* Purple color for Home button */
        }

        .btn-logout {
            background-color: #34495e; /* Dark Blue color for Logout button */
        }

        .btn:hover {
            filter: brightness(90%);
        }

        /* Added styles for top right buttons */
        .top-right-buttons {
            display: flex;
            justify-content: space-between;
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
    <title>Resident Details</title>
</head>

<body>

    <div class="top-right-buttons">
        <button type="button" class="btn-home" onclick="redirectTo('/resident_home')">Home</button>
        <button type="button" class="btn-logout" onclick="redirectTo('/')">Logout</button>
    </div>

    <div class="container">
        <h1>Resident</h1>

        <div class="btn-container">
            <button type="button" class="btn-lease-details" onclick="redirectTo('/leasedetails')">Lease Details</button>
            <button type="button" class="btn-lease-payment" onclick="redirectTo('/leasepayment')">Lease Payment</button>
            <button type="button" class="btn-place-order" onclick="redirectTo('/placeworkorder')">Place Work Order</button>
        </div>
    </div>
    <% if ("true".equals(request.getParameter("success"))) { %>
                <div class="container mt-3">
                    <div class="alert alert-success" role="alert">
                        Successfully added!
                    </div>
                </div>
            <% } %>
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