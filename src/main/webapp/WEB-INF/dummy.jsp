<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Success Page</title>
    <style>  
        h3 {
            font-family: Calibri; 
            font-size: 25pt;         
            font-style: normal; 
            font-weight: bold; 
            color: SlateBlue;
            text-align: center; 
            text-decoration: underline;
        }
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
        * {
            box-sizing: border-box;
        }
    </style> 
    <script>
        function logoutAndRedirect() {
            // Perform logout actions (if any)
            window.location.href = "${pageContext.request.contextPath}/"; // Redirect to home page
        }
    </script>
</head>
<body>

    <h3>Success Page</h3>
    <%
        response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
        if (session.getAttribute("username") == null) {
            response.sendRedirect("/login");
        }
    %>
    Welcome, ${sessionScope.username }
    <br>
    
    <a href="${pageContext.request.contextPath}/logout" onclick="logoutAndRedirect(); return false;">Logout</a>
</body>
</html>
