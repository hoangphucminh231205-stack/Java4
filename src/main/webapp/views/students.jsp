<%--
  Created by IntelliJ IDEA.
  User: docon
  Date: 09/11/2025
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
    <title>Title</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/students/create">Thêm sinh viên mới</a>
<h1>Thong tin</h1>
<table border="1">
  <thead>
    <tr>
      <th>STT</th>
      <th>Id</th>
      <th>Name</th>
      <th>email</th>
      <th>phone</th>
        <th>Action</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="student" items="${students}" varStatus="i">
    <tr>
      <td>${i.index + 1}</td>
      <td>${student.id}</td>
      <td>${student.name}</td>
      <td>${student.email}</td>
      <td>${student.phone}</td>
        <td>
            <a href="${pageContext.request.contextPath}/students/update?id=${student.id}">Sửa</a>
            <a href="${pageContext.request.contextPath}/students/delete?id=${student.id}"
               onclick="return confirm('Bạn có chắc muốn xóa sinh viên này?')">Xóa</a>
        </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>
