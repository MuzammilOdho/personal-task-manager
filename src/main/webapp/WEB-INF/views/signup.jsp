<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Signup</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-light">
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6 bg-white p-4 shadow rounded">
      <h3 class="text-center mb-4">Create Account</h3>
      <form method="post" action="${pageContext.request.contextPath}/auth/signup">
        <div class="mb-3">
          <label>Name</label>
          <input type="text" name="name" class="form-control" required />
        </div>
        <div class="mb-3">
          <label>Email</label>
          <input type="email" name="email" class="form-control" required />
        </div>
        <div class="mb-3">
          <label>Password</label>
          <input type="password" name="password" class="form-control" required />
        </div>
        <c:if test="${not empty error}">
          <div class="alert alert-danger">${error}</div>
        </c:if>
        <button class="btn btn-success w-100">Sign Up</button>
        <div class="text-center mt-3">
          <a href="${pageContext.request.contextPath}/auth/login">Already have an account? Login</a>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
