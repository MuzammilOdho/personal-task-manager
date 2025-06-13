<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Sign Up - ToDoMate</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-light">
<div class="container mt-5">
  <h2 class="mb-4">Create an Account</h2>
  <form action="/signup" method="post">
    <div class="mb-3">
      <label class="form-label">Username</label>
      <input type="text" name="username" class="form-control" required />
    </div>
    <div class="mb-3">
      <label class="form-label">Email</label>
      <input type="email" name="email" class="form-control" required />
    </div>
    <div class="mb-3">
      <label class="form-label">Password</label>
      <input type="password" name="password" class="form-control" required />
    </div>
    <button type="submit" class="btn btn-primary">Sign Up</button>
    <a href="/login" class="btn btn-link">Already have an account?</a>
  </form>
</div>
</body>
</html>
