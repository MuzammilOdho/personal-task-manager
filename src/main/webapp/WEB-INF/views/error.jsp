<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>❗ Error</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8f9fa;
            text-align: center;
            padding: 60px;
        }

        .error-box {
            background-color: #fff;
            border-radius: 12px;
            padding: 40px 60px;
            max-width: 600px;
            margin: auto;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        }

        i {
            font-size: 60px;
            color: #dc3545;
        }

        h1 {
            color: #dc3545;
            font-size: 48px;
        }

        h2 {
            color: #333;
            margin: 20px 0;
        }

        p {
            color: #666;
        }

        a {
            display: inline-block;
            margin-top: 25px;
            color: #007bff;
            font-weight: bold;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="error-box">
    <i class="fas fa-exclamation-triangle"></i>
    <h1>Oops!</h1>
    <h2>An error occurred</h2>

    <c:if test="${not empty errorMessage}">
        <p><strong>Details:</strong> ${errorMessage}</p>
    </c:if>

    <c:if test="${empty errorMessage}">
        <p>Something went wrong. Please try again later.</p>
    </c:if>

    <a href="${pageContext.request.contextPath}/">← Back to Home</a>
</div>
</body>
</html>
