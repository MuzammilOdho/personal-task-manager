<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Login - ToDoMate</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-light">
<div class="container mt-5">
  <h2 class="mb-4">Login to Your Account</h2>
  <form action="/login" method="post">
    <div class="mb-3">
      <label class="form-label">Username</label>
      <input type="text" name="username" class="form-control" required />
    </div>
    <div class="mb-3">
      <label class="form-label">Password</label>
      <input type="password" name="password" class="form-control" required />
    </div>
    <button type="submit" class="btn btn-primary">Login</button>
    <a href="/signup" class="btn btn-link">Don't have an account?</a>
  </form>
</div>
</body>
</html>
