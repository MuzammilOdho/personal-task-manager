<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Add New To-Do</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">➕ Add New Task</h2>
    <form action="save" method="post" class="mb-3">
        <div class="mb-3">
            <label class="form-label">Task Title</label>
            <input type="text" name="title" class="form-control" required placeholder="e.g. Complete Java Project"/>
        </div>
        <button type="submit" class="btn btn-success">Add To-Do</button>
        <a href="/todos" class="btn btn-outline-secondary ms-2">Cancel</a>
    </form>
</div>
</body>
</html>
