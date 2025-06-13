<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Welcome to ToDoMate</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <style>
    body {
      background: linear-gradient(to right, #00b4db, #0083b0);
      color: white;
      height: 100vh;
    }
  </style>
</head>
<body>
<div class="container text-center d-flex flex-column justify-content-center align-items-center" style="height: 100%;">
  <h1 class="display-4 fw-bold">📝 ToDoMate</h1>
  <p class="lead">Your Smart Personal Task Manager</p>
  <div class="mt-4">
    <a href="/auth/login" class="btn btn-light btn-lg me-3">Login</a>
    <a href="/auth/signup" class="btn btn-outline-light btn-lg">Sign Up</a>
  </div>
</div>
</body>
</html>
