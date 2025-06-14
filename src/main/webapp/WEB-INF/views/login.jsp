<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Login</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f9f9f9;
    }
    .container {
      width: 400px;
      margin: 100px auto;
      padding: 25px;
      background: white;
      border-radius: 8px;
      box-shadow: 0 0 10px #ccc;
    }
    .input-group {
      margin-bottom: 15px;
    }
    label {
      display: block;
      margin-bottom: 6px;
      font-weight: bold;
    }
    input {
      width: 100%;
      padding: 8px;
    }
    button {
      background: #007BFF;
      color: white;
      padding: 10px 20px;
      border: none;
      cursor: pointer;
      width: 100%;
    }
    .message {
      font-weight: bold;
      padding: 10px;
      margin-bottom: 15px;
      border-radius: 5px;
    }
    .error { background-color: #f8d7da; color: #721c24; }
    .success { background-color: #d4edda; color: #155724; }
  </style>
</head>
<body>
<div class="container">
  <h2>🔐 Login</h2>

  <c:if test="${not empty errorMessage}">
    <div class="message error">${errorMessage}</div>
  </c:if>

  <c:if test="${not empty successMessage}">
    <div class="message success">${successMessage}</div>
  </c:if>

  <form action="${pageContext.request.contextPath}/auth/login" method="post">
    <div class="input-group">
      <label>Email:</label>
      <input type="text" name="email" required />
    </div>
    <div class="input-group">
      <label>Password:</label>
      <input type="password" name="password" required />
    </div>
    <button type="submit">Login</button>
  </form>

  <p style="margin-top: 15px;">Don't have an account? <a href="${pageContext.request.contextPath}/auth/signup">Sign up</a></p>
</div>
</body>
</html>
