<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lease Payment Form</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <!-- Header Section -->
    <header class="bg-dark text-white text-center p-4">
        Lease Payment Form
    </header>

    <!-- Lease Payment Form -->
    <section id="lease-payment" class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2>Pay Lease</h2>
                <form id="leasePaymentForm" action="${pageContext.request.contextPath}/resident_home?success=true" method="post">
                    <div class="form-group">
                        <label for="tenantName">Tenant Name:</label>
                        <input type="text" class="form-control" id="tenantName" placeholder="John Doe" required>
                    </div>
                    <div class="form-group">
                        <label for="paymentMode">Payment Mode:</label>
                        <select class="form-control" id="paymentMode" required>
                            <option value="">Select Payment Mode</option>
                            <option value="Credit Card">Credit Card</option>
                            <option value="Debit Card">Debit Card</option>
                        </select>
                    </div>

                    <div class="form-group">
                     <label for="tenantCard">Enter Card Details:</label>
                    <input type="number" class="form-control" id="tenantCard" placeholder="Enter Card Details" required>
                    </div>
                    <div class="form-group">
                   <label for="tenantCard">Enter CVV:</label>
                    <input type="number" class="form-control" id="tenantCard" placeholder="Enter CVV" required>
                    </div>
                    <div class="form-group">
                    <label for="expiryDate">Enter Expiry Date:</label>
                    <input type="date" class="form-control" id="expiryDate" placeholder="Enter Expiry Date" required>
                    </div>
                    <div class="form-group">
                        <label for="paymentDate">Payment Date:</label>
                        <input type="date" class="form-control" id="paymentDate" required>
                    </div>
                    <div class="form-group">
                        <label for="paymentAmount">Payment Amount:</label>
                        <input type="number" class="form-control" id="paymentAmount" placeholder="Enter payment amount" required>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Submit Payment</button>
                </form>
            </div>
        </div>
    </section>

    <!-- Bootstrap & jQuery JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>