<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lease Details</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <!-- Header Section -->
    <header class="bg-dark text-white text-center p-4">
        Lease Details
    </header>

    <!-- Lease Details Table -->
    <section id="lease-details" class="container mt-5">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Tenant Name</th>
                    <th>Lease Start Date</th>
                    <th>Lease End Date</th>
                    <th>Monthly Rent</th>
                </tr>
            </thead>
            <tbody>
                    <tr>
                        <td>${leases.leaseID}</td>
                        <td>${leases.leaseStartDate}</td>
                        <td>${leases.leaseEndDate}</td>
                        <td>${leases.monthlyRent}</td>
                    </tr>
            </tbody>
        </table>
    </section>

    <!-- Bootstrap & jQuery JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>