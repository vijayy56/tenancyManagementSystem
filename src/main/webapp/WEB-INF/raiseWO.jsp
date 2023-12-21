<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Raise Work Order</title>
    <!-- Bootstrap CSS -->
    <style>
    .top-right-buttons {
                display: flex;
                justify-content: space-between;
                position: absolute;
                top: 10px;
                right: 10px;
            }
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <!-- Header Section -->
    <header class="bg-dark text-white text-center p-4">
        <h1>Raise Work Order</h1>
    </header>

    <!-- Work Order Form -->
    <section id="work-order" class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2>Raise a Work Order</h2>

                <form id="workOrderForm" action="${pageContext.request.contextPath}/resident_home?success=true" method="post">
                    <div class="form-group">
                        <label for="ownerName">Owner Name:</label>
                        <input type="text" class="form-control" id="ownerName" placeholder="John Doe" required>
                    </div>
                    <div class="form-group">
                        <label for="apartmentNumber">Apartment Number:</label>
                        <input type="text" class="form-control" id="apartmentNumber" placeholder="123" required>
                    </div>
                    <div class="form-group">
                        <label for="issueType">Issue Type:</label>
                        <select class="form-control" id="issueType" required>
                            <option value="">Select Issue Type</option>
                            <option value="Plumbing">Plumbing</option>
                            <option value="Electrical">Electrical</option>
                            <option value="Appliance">Appliance</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="issueDescription">Issue Description:</label>
                        <textarea class="form-control" id="issueDescription" rows="5" placeholder="Enter issue description" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Submit Work Order</button>
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