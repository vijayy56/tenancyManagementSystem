<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <title>Leases Page</title>
    <!-- Add Bootstrap CSS link -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Add your custom styles here */
        body {
            padding: 20px; /* Add padding for better appearance */
        }

        /* Style the login section */
        .login-section {
            background-color: #f8f9fa; /* Light gray background */
            padding: 20px;
            border-radius: 5px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="login-section">
                      <h2>Lease Details of Residents</h2>
                      <!-- Add your login form here -->
                  </div>
    <div class="container">
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>Lease ID</th>
                    <th>Lease Start Date</th>
                    <th>Lease End Date</th>
                    <th>Monthly Rent<th>
                    <!-- Add more columns as needed -->
                </tr>
            </thead>
            <tbody>
                <c:forEach var="lease" items="${leases}">
                    <tr>
                        <td>${lease.leaseID}</td>
                        <td>${lease.leaseStartDate}</td>
                        <td>${lease.leaseEndDate}</td>
                        <td>${lease.monthlyRent}</td>

                        <!-- Add more columns as needed -->
                    </tr>
                </c:forEach>
            </tbody>
        </table>


    </div>

    <!-- Add Bootstrap JS and Popper.js (required for Bootstrap components) -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>



