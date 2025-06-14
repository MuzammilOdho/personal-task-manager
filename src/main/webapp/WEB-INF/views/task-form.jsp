<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Task</title>

    <!-- Font Awesome (for icons) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f9f9f9;
            padding: 20px;
        }

        .container {
            background-color: white;
            padding: 30px;
            max-width: 600px;
            margin: auto;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        button {
            background-color: #28a745;
            color: white;
            padding: 10px 18px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: bold;
            width: 100%;
        }

        button:hover {
            background-color: #218838;
        }

        a {
            display: block;
            margin-top: 20px;
            color: #007bff;
            text-align: center;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
<div class="container">
    <h1><i class="fas fa-plus-circle"></i> Add New Task</h1>

    <form action="${pageContext.request.contextPath}/tasks/add" method="post">
        <label for="title">Title</label>
        <input type="text" id="title" name="title" required />

        <label for="description">Description</label>
        <textarea id="description" name="description" rows="4"></textarea>

        <label>
            <input type="checkbox" name="completed" /> Completed
        </label>

        <br/><br/>
        <button type="submit"><i class="fas fa-save"></i> Save Task</button>
    </form>

    <a href="${pageContext.request.contextPath}/tasks">← Back to Tasks</a>
</div>
</body>
</html>
