<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>❗ Error Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f8f9fa;
            text-align: center;
            padding: 60px;
        }

        .error-box {
            display: inline-block;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            padding: 40px 60px;
            max-width: 600px;
        }

        h1 {
            font-size: 48px;
            color: #dc3545;
        }

        h2 {
            font-size: 24px;
            color: #333;
            margin: 20px 0;
        }

        p {
            font-size: 16px;
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

        i {
            font-size: 60px;
            color: #dc3545;
        }
    </style>
</head>
<body>
<div class="error-box">
    <i class="fas fa-exclamation-triangle"></i>
    <h1>Oops!</h1>
    <h2>${requestScope['javax.servlet.error.status_code']} - ${requestScope['javax.servlet.error.message']}</h2>

    <c:if test="${not empty exception}">
        <p><strong>Cause:</strong> ${exception.message}</p>
    </c:if>

    <a href="${pageContext.request.contextPath}/">← Back to Home</a>
</div>
</body>
</html>
