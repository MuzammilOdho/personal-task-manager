<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit To-Do</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">✏️ Edit Task</h2>
    <form action="/todos/update" method="post">
        <input type="hidden" name="id" value="${todo.id}" />
        <div class="mb-3">
            <label class="form-label">Task Title</label>
            <input type="text" name="title" class="form-control" value="${todo.title}" required />
        </div>
        <div class="mb-3">
            <label class="form-label">Status</label>
            <select name="completed" class="form-select">
                <option value="false" ${!todo.completed ? "selected" : ""}>Pending</option>
                <option value="true" ${todo.completed ? "selected" : ""}>Completed</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Update Task</button>
        <a href="/todos" class="btn btn-outline-secondary ms-2">Cancel</a>
    </form>
</div>
</body>
</html>
