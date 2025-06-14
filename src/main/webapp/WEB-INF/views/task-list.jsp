<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>📋 Task List</title>

    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f0f2f5;
            padding: 20px;
        }

        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            max-width: 1000px;
            margin: auto;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        .message {
            font-weight: bold;
            padding: 12px;
            border-radius: 6px;
            margin-bottom: 20px;
        }

        .success {
            background-color: #d4edda;
            color: #155724;
        }

        .error {
            background-color: #f8d7da;
            color: #721c24;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        tr:hover {
            background-color: #eef2f7;
        }

        .actions a {
            text-decoration: none;
            margin: 0 5px;
            color: #007bff;
            font-size: 18px;
        }

        .actions a:hover {
            color: #0056b3;
        }

        .btn-add {
            display: inline-block;
            margin-bottom: 20px;
            background: #28a745;
            color: white;
            padding: 10px 18px;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
        }

        .btn-add:hover {
            background: #218838;
        }

        .status-icon {
            font-size: 18px;
        }

        .done {
            color: #28a745;
        }

        .not-done {
            color: #dc3545;
        }
    </style>
</head>

<body>
<div class="container">
    <h1>📋 Your Task List</h1>

    <!-- Success & Error Messages -->
    <c:if test="${not empty successMessage}">
        <div class="message success">${successMessage}</div>
    </c:if>

    <c:if test="${not empty errorMessage}">
        <div class="message error">${errorMessage}</div>
    </c:if>

    <a href="${pageContext.request.contextPath}/tasks/add" class="btn-add">
        <i class="fas fa-plus"></i> Add New Task
    </a>

    <table>
        <thead>
        <tr>
            <th>#</th>
            <th>📌 Title</th>
            <th>📝 Description</th>
            <th>📅 Created At</th>
            <th>✅ Completed</th>
            <th>⚙️ Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="task" items="${tasks}">
            <tr>
                <td>${task.id}</td>
                <td>${task.title}</td>
                <td>${task.description}</td>
                <td>${task.createdAt}</td>
                <td>
                    <span class="status-icon">
                        <c:choose>
                            <c:when test="${task.completed}">
                                <i class="fas fa-check-circle done"></i>
                            </c:when>
                            <c:otherwise>
                                <i class="fas fa-times-circle not-done"></i>
                            </c:otherwise>
                        </c:choose>
                    </span>
                </td>
                <td class="actions">
                    <a href="${pageContext.request.contextPath}/tasks/edit/${task.id}" title="Edit Task">
                        <i class="fas fa-edit"></i>
                    </a>
                    <a href="${pageContext.request.contextPath}/tasks/delete/${task.id}" title="Delete Task"
                       onclick="return confirm('Are you sure you want to delete this task?');">
                        <i class="fas fa-trash"></i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
