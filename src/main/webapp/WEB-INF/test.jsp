<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Visually Appealing JSP Page</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <style>
            body {
                background-image: url("background.jpg");
                background-size: cover;
                background-position: center;
                font-family: Arial, sans-serif;
            }

            .container {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .button-container {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 20px;
            }

            .button-container button {
                margin: 0 10px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Welcome to Our Platform</h1>
            <div class="button-container">
                <button class="btn btn-primary">Lease Details</button>
                <button class="btn btn-primary">Place Work Order</button>
                <button class="btn btn-primary">Lease Payment</button>
            </div>
        </div>

        <!-- Bootstrap & jQuery JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>


