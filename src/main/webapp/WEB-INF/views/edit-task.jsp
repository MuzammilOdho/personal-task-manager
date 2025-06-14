<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Task</title>

    <!-- Font Awesome (optional, for icons) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .container {
            background-color: white;
            padding: 30px;
            max-width: 600px;
            margin: auto;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            margin-bottom: 15px;
        }

        button {
            background-color: #007bff;
            color: white;
            padding: 10px 18px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
        }

        button:hover {
            background-color: #0056b3;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
<div class="container">
    <h1>✏️ Edit Task</h1>

    <form action="${pageContext.request.contextPath}/tasks/update" method="post">
        <input type="hidden" name="id" value="${task.id}" />

        <label for="title">Title</label>
        <input type="text" id="title" name="title" value="${task.title}" required />

        <label for="description">Description</label>
        <textarea id="description" name="description" rows="4">${task.description}</textarea>

        <label>
            <input type="checkbox" name="completed"
                   <c:if test="${task.completed}">checked</c:if> />
            Completed
        </label>

        <br/><br/>
        <button type="submit"><i class="fas fa-save"></i> Update Task</button>
    </form>

    <a href="${pageContext.request.contextPath}/tasks">← Back to Tasks</a>
</div>
</body>
</html>
