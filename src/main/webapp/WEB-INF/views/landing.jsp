<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Task Manager | Welcome</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <style>
    body {
      background: linear-gradient(to right, #e3f2fd, #ffffff);
      min-height: 100vh;
    }
    .hero {
      padding: 80px 20px;
      text-align: center;
    }
    .hero h1 {
      font-size: 3rem;
      font-weight: bold;
    }
    .hero p {
      font-size: 1.2rem;
      color: #555;
    }
  </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
  <div class="container">
    <a class="navbar-brand fw-bold" href="#">Task Manager</a>
    <div class="d-flex">
      <a href="${pageContext.request.contextPath}/auth/login" class="btn btn-outline-primary me-2">Login</a>
      <a href="${pageContext.request.contextPath}/auth/signup" class="btn btn-primary">Sign Up</a>
    </div>
  </div>
</nav>

<div class="hero container">
  <h1>Welcome to Your Task Manager</h1>
  <p class="mt-3">Organize your life one task at a time. Secure, simple, and free.</p>
  <div class="mt-4">
    <a href="${pageContext.request.contextPath}/auth/signup" class="btn btn-success btn-lg me-2">Get Started</a>
    <a href="${pageContext.request.contextPath}/auth/login" class="btn btn-outline-secondary btn-lg">I already have an account</a>
  </div>
</div>
</body>
</html>
