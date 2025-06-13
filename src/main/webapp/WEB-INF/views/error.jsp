<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-light">
<div class="container mt-5 text-center">
    <h2 class="text-danger">⚠️ Something went wrong</h2>
    <p>${exception.message}</p>
    <a href="/" class="btn btn-outline-primary">⬅ Go Home</a>
</div>
</body>
</html>
