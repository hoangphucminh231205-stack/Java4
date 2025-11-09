<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    <title>Cập nhật sinh viên</title>
</head>
<body>
    <h1>Cập nhật sinh viên</h1>
    <form action="${pageContext.request.contextPath}/students/update" method="post">
        <input type="hidden" name="id" value="${student.id}">
        <div>
            <label>Họ tên:</label>
            <input type="text" name="name" value="${student.name}" required>
        </div>
        <div>
            <label>Email:</label>
            <input type="email" name="email" value="${student.email}" required>
        </div>
        <div>
            <label>Số điện thoại:</label>
            <input type="text" name="phone" value="${student.phone}" required>
        </div>
        <button type="submit">Cập nhật</button>
        <a href="${pageContext.request.contextPath}/students">Hủy</a>
    </form>
</body>
</html>