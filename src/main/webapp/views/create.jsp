<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    <title>Tạo sinh viên mới</title>
</head>
<body>
    <h1>Tạo sinh viên mới</h1>
    <form action="${pageContext.request.contextPath}/students/create" method="post">
        <div>
            <input type="hidden" name="id" required>
        </div>
        <div>
            <label>Họ tên:</label>
            <input type="text" name="name" required>
        </div>
        <div>
            <label>Email:</label>
            <input type="email" name="email" required>
        </div>
        <div>
            <label>Số điện thoại:</label>
            <input type="text" name="phone" required>
        </div>
        <button type="submit">Tạo</button>
        <a href="${pageContext.request.contextPath}/students">Hủy</a>
    </form>
</body>
</html>