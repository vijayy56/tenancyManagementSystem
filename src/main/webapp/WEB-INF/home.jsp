<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tenancy Database Management System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            position: relative;
            color: white;
        }

        body::before {
            content: '';
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            background-image: url('https://images.unsplash.com/photo-1564471925181-982d3a6c1a3f?q=80&w=3464&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D%27);');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            filter: blur(3px); /* Adjust the blur effect as needed */
        }

        .container {
            width: 50%;
            margin: 0 auto;
            text-align: center;
            margin-top: 50px;
        }

        h3 {
            font-family: 'Verdana', sans-serif;
            font-size: 25pt;
            font-weight: bold;
            color: #483D8B;
            text-align: center;
            text-decoration: underline;
        }

        .options-container {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        .options-container a {
            text-decoration: none;
            padding: 10px 20px;
            font-size: 18px;
            border-radius: 5px;
            transition: background-color 0.3s ease-in-out;
            color: white;
        }

        .owner-btn {
            background: linear-gradient(to right, #FF4F4F, #FF964F);
        }

        .resident-btn {
            background: linear-gradient(to right, #30cfd0, #330867);
        }

        .login-btn, .signup-btn {
            background: linear-gradient(to right, #ff7e5f, #feb47b);
        }

        .login-btn:hover, .signup-btn:hover {
            filter: brightness(90%);
        }

        .resident-btn:hover .resident-options a {
            display: inline-block;
        }

        .address-contact {
            margin-top: 50px;
            color: black;
            animation: fadeInUp 1.5s ease;
            font-weight: bold; /* Make the text bold */
            font-size: 20px; /* Increase the font size */
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h3>Tenancy Database Management System</h3>

        <div class="options-container">
            <a href="/login?type=owner" class="owner-btn">Owner</a>
            <a href="/login-resident" class="resident-btn">Resident</a>
        </div>

        <div class="address-contact">
            <p>Address: 3002 4th St, Lubbock, TX 79415</p>
            <p>Contact Number: +1 (555) 123-4567</p>
        </div>
    </div>
</body>
</html>
