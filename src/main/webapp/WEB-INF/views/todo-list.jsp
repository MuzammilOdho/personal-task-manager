<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>To-Do List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">📋 Your Tasks</h2>
    <a href="add" class="btn btn-success mb-3">+ Add New To-Do</a>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>#</th>
            <th>Task</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="todo" items="${todos}">
            <tr>
                <td>${todo.id}</td>
                <td>${todo.title}</td>
                <td>
                            <span class="badge bg-${todo.completed ? 'success' : 'secondary'}">
                                    ${todo.completed ? "Completed" : "Pending"}
                            </span>
                </td>
                <td>
                    <a href="edit/${todo.id}" class="btn btn-sm btn-warning">Edit</a>
                    <a href="delete/${todo.id}" class="btn btn-sm btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="/" class="btn btn-outline-secondary">⬅ Back to Home</a>
</div>
</body>
</html>
